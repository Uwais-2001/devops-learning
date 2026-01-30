from flask import Flask
from redis import Redis 
import os 

REDIS_HOST = os.getenv('REDIS_HOST', 'redis')
REDIS_PORT = int(os.getenv('REDIS_PORT', '6379'))
REDIS_COUNTER = os.getenv('REDIS_COUNTER', 'visits')  

app = Flask(__name__)

r = Redis(host=REDIS_HOST, port=REDIS_PORT, decode_responses=True)

@app.route('/')
def greet():
    return 'Welcome User! This is my flask-redis app.'

@app.route('/count')
def visit_count():
    res = r.incr(REDIS_COUNTER)
    return f'This page has been visited {res} times'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)