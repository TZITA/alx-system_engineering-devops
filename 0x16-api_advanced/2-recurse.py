#!/usr/bin/python3
""""""
import requests


def recurse(subreddit, after=None):
    headers = {'User-Agent': 'tzita/v1.0'}
    url = f'https://www.reddit.com/r/{subreddit}/hot.json?limit=100'
    if after:
        url += f'&after={after}'
    response = requests.get(url, headers=headers)
    if response.status_code == 200:
        data = response.json()
        posts = data['data']['children']
        if not posts:
            return []
        else:
            titles = [post['data']['title'] for post in posts]
            after = data['data']['after']
            remaining_titles = recurse(subreddit, after)
            return titles + remaining_titles
    else:
        return None
