HOSTNAME = '127.0.0.1'
PORT = '3306'  # �˿�
DATABASE = 'plant'  # ����
USERNAME = 'root'  # �û���
PASSWORD = '798lhh'  # ����
DB_URI = 'mysql+pymysql://{}:{}@{}:{}/{}'.format(USERNAME, PASSWORD, HOSTNAME, PORT, DATABASE)
SQLALCHEMY_DATABASE_URI = DB_URI
SQLALCHEMY_TRACK_MODIFICATIONS = True