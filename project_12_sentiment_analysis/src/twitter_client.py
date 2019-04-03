import yaml
import tweepy
from textblob import TextBlob

'''
Generic Twitter Client
'''
class TwitterClient:
    def __init__(self):
        with open("config.yml", 'r') as ymlfile:
            twitter_config = yaml.load(ymlfile)

        consumer_key = twitter_config['twitter']['consumer_key']
        consumer_secret = twitter_config['twitter']['consumer_secret']

        access_token= twitter_config['twitter']['access_token']
        access_token_secret= twitter_config['twitter']['access_token_secret']

        self.auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
        self.auth.set_access_token(access_token, access_token_secret)
        self.api = tweepy.API(self.auth)
        self.tweet_n_max = 100

    def get_tweets(self, query):
        tweets = []
        raw_tweets = self.api.search(q=query, count=self.tweet_n_max)

        for tweet in raw_tweets:
            parsed_tweet = {}
            parsed_tweet['text'] = tweet.text
            parsed_tweet['user'] = tweet.user.screen_name
            sentiment = self.get_sentiment(tweet.text)
            parsed_tweet['sentiment_status'] = sentiment[0]
            parsed_tweet['sentiment_polarity'] = sentiment[1]

            tweets.append(parsed_tweet)

        return tweets

    def get_sentiment(self, tweet_text):
        analysis = TextBlob(tweet_text)
        if analysis.sentiment.polarity > 0:
            return ('positive',analysis.sentiment.polarity)
        elif analysis.sentiment.polarity < 0:
            return ('negative',analysis.sentiment.polarity)
        return ('neutral',analysis.sentiment.polarity)
