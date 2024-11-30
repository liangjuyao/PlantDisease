# -*- coding: utf-8 -*-
import os
import torchvision.transforms.functional as TF
import CNN
import numpy as np
import torch
import pandas as pd
import config
import models
import configparser

from flask import Flask, request, jsonify
from PIL import Image
from werkzeug.utils import secure_filename
from ext import db
from flask_migrate import Migrate

app = Flask(__name__)

# 配置数据库
app.json.ensure_ascii = False
app.config.from_object(config)
db.init_app(app)
migrate = Migrate(app, db)

env = configparser.ConfigParser()
env.read('env.ini')

# 导入csv数据
disease_info = pd.read_csv('disease_info.csv', encoding='utf-8')
supplement_info = pd.read_csv('supplement_info.csv', encoding='utf-8')

# 加载模型权重
model = CNN.CNN(39)
model.load_state_dict(torch.load("Ljy-Plant-Model.pt"))
model.eval()

host = env['flask']['host']
port = env.getint('flask', 'port')

# 允许上传的图片格式
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg'}


def allowed_file(filename):
    return '.' in filename and \
        filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS


#  预训练
def prediction(image_path):
    image = Image.open(image_path)
    image = image.resize((224, 224))
    input_data = TF.to_tensor(image)
    input_data = input_data.view((-1, 3, 224, 224))
    output = model(input_data)
    output = output.detach().numpy()
    index = np.argmax(output)
    return index


# 接口
@app.route('/submit', methods=['POST'])
def submit():
    if request.method == 'POST':
        image = request.files.get('image')
        if image and allowed_file(image.filename):
            filename = secure_filename(image.filename)
            file_path = os.path.join('static/uploads', filename)
            image.save(file_path)
            pred = prediction(file_path)
            pred = int(pred) if isinstance(pred, np.integer) else pred
            response_data = {
                'title': disease_info['disease_name'].get(pred, "Unknown Disease"),
                'description': disease_info['description'].get(pred, "No description available."),
                'prevent': disease_info['Possible Steps'].get(pred, "No prevention steps available."),
                'image_url': disease_info['image_url'].get(pred, "#"),
                'pred': pred,
                'sname': supplement_info['supplement name'].get(pred, "No supplement info."),
                'simage': supplement_info['supplement image'].get(pred, "#"),
                'buy_link': supplement_info['buy link'].get(pred, "#")
            }
            return jsonify(response_data)
    return jsonify({'error': 'Invalid request or no file provided'}), 400


@app.route('/plant/list')
def science():
    page = request.args.get('page', 1, type=int)
    nid = request.args.get('nid')  # 标签
    per_page = 14
    query = models.ScienceModel.query
    if nid:
        query = query.filter(models.ScienceModel.sub_type == nid)
        pagination = query.paginate(page=page, per_page=per_page, error_out=False)
        sciences = pagination.items
    # 构建响应数据
    response_data = {
        'code': 0,
        'data': [
            {
                'id': science.id,
                'plant_id': science.plant_id,
                'name': science.name,
                'type': science.type,
                'sub_type': science.sub_type,
                'img': science.img,
                'intro': science.intro
            }
            for science in sciences
        ],
        'total': pagination.total,
        'pages': pagination.pages,
        'page': pagination.page
    }
    return jsonify(response_data)


@app.route('/plant/detail')
def science_detail():
    science_id = request.args.get('id')
    if not science_id or not science_id.isdigit():
        return jsonify({'code': 1, 'message': 'Invalid science ID'}), 400
    science = models.ScienceModel.query.get(int(science_id))
    # 检查科学模型是否存在
    if science is None:
        return jsonify({'code': 1, 'message': 'Science not found'}), 404
    science_data = {
        "code": 0,
        "data": {
            'id': science.id,
            'plant_id': science.plant_id,
            'name': science.name,
            'type': science.type,
            'sub_type': science.sub_type,
            'img': science.img,
            'intro': science.intro
        }
    }
    return jsonify(science_data)


# 启动入口
if __name__ == '__main__':
    app.run(host=host, port=port, debug=True)  # 例如host='127.0.0.1'  port=5555
