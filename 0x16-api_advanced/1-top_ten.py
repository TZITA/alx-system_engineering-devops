#!/usr/bin/python3
"""Titles of the top 10 posts"""
import requests


def top_ten(subreddit):
    """
    Returns the titles of the first 10 hot posts listed for a given subreddit.
    """
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    response = requests.get(url, headers={'User-Agent': 'tzitav1.0'})
    if response.status_code == 200:
        res = response.json()
        posts = res["data"]["children"][:10]
        for post in posts:
            print(post["data"]["title"])
    else:
        print("None")
