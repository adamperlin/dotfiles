#!/usr/bin/env python 

import requests

def main():
    try:
        ip = requests.get("http://ipinfo.io/ip")
    except Exception as e:
        print("error: couldn't get external ip; {}".format(e)) 
    else: 
        print(ip.content.strip())

if __name__ == "__main__":
    main() 
