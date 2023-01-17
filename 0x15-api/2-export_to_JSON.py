#!/usr/bin/python3
"""Exports to-do list information for a given employee ID to JSON format."""
import json
import requests
import sys

if __name__ == "__main__":
    user_id = sys.argv[1]
    target_url = "https://jsonplaceholder.typicode.com/"
    user = requests.get(target_url + "users/{}".format(user_id)).json()
    username = user.get("username")
    tasks = requests.get(target_url + "todos", params={"userId": user_id}).json()

    with open("{}.json".format(user_id), "w") as jsonf:
        json.dump({user_id: [{
                "task": t.get("title"),
                "completed": t.get("completed"),
                "username": username
            } for t in tasks]}, jsonf)
