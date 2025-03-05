import requests

from UTILITIES.config import NEWBOOK_USERNAME, NEWBOOK_PASSWORD

def http_request(method,url,payload):
   return requests.request(method, url, auth=(NEWBOOK_USERNAME, NEWBOOK_PASSWORD), json=payload)
