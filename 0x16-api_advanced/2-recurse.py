#!/usr/bin/python3
"""Recursive function to list all titles of hot articles"""
import requests


def recurse(subreddit, hot_list=[], after=None, counter=0):
    """
    Returns a list of titles of all hot articles for a given subreddit.
    """
    headers = {'User-Agent': 'tzita/v1.0'}
    params = {'after': after, 'counter': counter, 'limit': 100}
    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)
    response = requests.get(url, headers=headers, params=params)
    if response.status_code != 200:
        return None
    data = response.json()['data']
    counter += data['dist']
    if not data['children']:
        return None
    [hot_list.append(post['data']['title']) for post in data['children']]
    after = data['after']
    if after:
        more_posts = recurse(subreddit, hot_list, after, counter)
        if more_posts:
            hot_list += more_posts
    return hot_list
