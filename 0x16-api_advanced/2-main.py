#!/usr/bin/python3
"""
2-main
"""
import sys

if __name__ == '__main__':
    count_words = __import__('100-count').count_words
    if len(sys.argv) < 2:
        print("Please pass an argument for the subreddit to search.")
    else:
        result = count_words(sys.argv[1])
        if result is not None:
            print(len(result))
        else:
            print("None")
