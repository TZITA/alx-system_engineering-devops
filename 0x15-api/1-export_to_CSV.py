#!/usr/bin/python3
"""Exports to-do list information for a
    given employee ID to CSV format.
"""
import csv
import requests
import sys


if __name__ == '__main__':
    user_id = sys.argv[1]
    t_url = "https://jsonplaceholder.typicode.com/"
    user = requests.get(t_url + "users/{}".format(user_id)).json()
    username = user.get("username")
    tasks = requests.get(t_url + "todos", params={"userId": user_id}).json()

    with open("{}.csv".format(user_id), "w", newline="") as csvf:
        writer = csv.writer(csvf, quoting=csv.QUOTE_ALL)
        [writer.writerow(
            [user_id, username, t.get("completed"), t.get("title")]
         ) for t in tasks]
