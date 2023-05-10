#!/usr/bin/python3
""" Recursive function to count keywords"""
import requests


def count_words(subreddit, word_list, hot_list=[], after=None, counter=0):
    """
    Prints a sorted count of given keywords.
    """
    headers = {'User-Agent': 'tzita/v1.0'}
    params = {'after': after, 'limit': 100, 'counter': counter}
    url = 'https://www.reddit.com/r/{}/hot.json'.format(subreddit)
    response = requests.get(url, headers=headers, params=params)
    if response.status_code != 200:
        return None
    dataJ = response.json()['data']
    counter += dataJ['dist']
    [hot_list.append(d['data']['title']) for d in dataJ['children']]
    after = dataJ['after']
    if after:
        return count_words(subreddit, word_list, hot_list, after, counter)
    
    new_list = []
    for i in range(len(hot_list)):
        if word_list.lower() is hot_list[i]:
            new_list.append(word_list)
    print("{}: {}".format(word_list.lower(), len(new_list)))

