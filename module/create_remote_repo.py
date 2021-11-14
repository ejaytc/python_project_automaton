import os
import json
import requests
from sys import argv

def get_config():
    config_path = os.path.join(argv[2],
        r"Project Automation\config\py_config.json")
    with open(config_path, 'r') as py_config:
        data = json.load(py_config)
        return data


config_data = get_config()
payload = '{"name": "' + argv[1] + '"}'
api_url = config_data['api_url']
headers = config_data['headers']
ssh_url_dir = os.path.join(argv[2], 'ssh_url.txt')
print(ssh_url_dir)
with open(ssh_url_dir, 'w') as ssh_url:
    response = requests.post(api_url, data=payload, headers=headers)
    response_to_json = response.json()
    ssh_url.write(response_to_json['ssh_url'])