#!/usr/bin/python3
""" A script that, using this REST API, for a given employee ID,
    returns information about his/her TODO list progress.
"""
import requests
import sys


if __name__ == '__main__':
    t_url = "https://jsonplaceholder.typicode.com/"
    user = requests.get(t_url + "users/{}".format(sys.argv[1])).json()
    t = requests.get(t_url + "todos", params={"userId": sys.argv[1]}).json()

    completed = []
    for i in t:
        if i.get("completed") is True:
            completed.append(i.get("title"))
    print("Employee {} is done with tasks({}/{}):".format(
        user.get("name"), len(completed), len(t)))
    for c in completed:
        print("\t {}".format(c))
