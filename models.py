# -*- coding: utf-8 -*-
from ext import db

# 科普模型
class ScienceModel(db.Model):
    __tablename__ = 'Science'
    id = db.Column(db.Integer, primary_key=True)
    plant_id = db.Column(db.String(64), comment='标签序号')
    name = db.Column(db.String(64), comment='名称')
    type = db.Column(db.String(64), comment='类型')
    sub_type = db.Column(db.String(64), comment='子类型')
    img = db.Column(db.String(255), comment='图片地址')
    intro = db.Column(db.Text, comment='介绍')