HOSTNAME = '127.0.0.1'
PORT = '3306'  # 端口
DATABASE = 'plant'  # 表名
USERNAME = 'root'  # 用户名
PASSWORD = '798lhh'  # 密码
DB_URI = 'mysql+pymysql://{}:{}@{}:{}/{}'.format(USERNAME, PASSWORD, HOSTNAME, PORT, DATABASE)
SQLALCHEMY_DATABASE_URI = DB_URI
SQLALCHEMY_TRACK_MODIFICATIONS = True