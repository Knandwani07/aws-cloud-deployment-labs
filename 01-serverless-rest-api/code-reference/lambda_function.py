import json
from config import base_url
from urllib import request

def lambda_handler(event, context):
    with request.urlopen(base_url + 'todos/1') as response:
        response_body = response.read().decode('utf-8')

        return {
            'statusCode': response.getcode(),
            'body': json.loads(response_body)
        }
