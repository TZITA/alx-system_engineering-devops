#!/usr/bin/python3
"""Using Reddit API, number of subscribers"""
import requests


def number_of_subscribers(subreddit):
    """
    A function that returns number of subscribers
    for a given subreddit, otherwise returns 0.
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    response = requests.get(url, headers={"User-Agent": "tzita/v1.0"})
    if response.status_code == 200:
        resJson = response.json()
        return resJson["data"]["subscribers"]
    else:
        return 0
