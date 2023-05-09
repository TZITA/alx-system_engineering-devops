#!/usr/bin/python3
"""Recursive function to list all titles of hot articles"""
import requests


def recurse(subreddit, after=None):
    """
    Returns a list of titles of all hot articles for a given subreddit.
    """
    headers = {'User-Agent': 'tzita/v1.0'}
    url = f'https://www.reddit.com/r/{subreddit}/hot.json?limit=100'
    if after:
        url += f'&after={after}'
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code != 200:
        return None
    data = response.json()['data']
    if not data['children']:
        return None
    posts = [post['data']['title'] for post in data['children']]
    next_page = data['after']
    if next_page:
        more_posts = recurse(subreddit, next_page)
        if more_posts:
            posts += more_posts
    return posts
