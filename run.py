from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)

class HelloWorld(Resource):
    def get(self):
        return {'hello': 'world'}

api.add_resource(HelloWorld, '/')

class HelloWorlde(Resource):
    def get(self):
        return {'hello1': 'world2'}

api.add_resource(HelloWorlde, '/amd')

if __name__ == '__main__':
    app.run(debug=True)