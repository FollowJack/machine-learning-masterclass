import tweepy
from textblob import TextBlob

'''
Generic Twitter Client
'''
class TwitterClient:
    def __init__(self):
        consumer_key= 'Z3dK7LmOsfjxY0wUDRrhzhtuf'
        consumer_secret= 'pCSoTeyTV9vqocSAPC4YroFGguWbYC994G68DSpFpivb4kzQBG'
        access_token='917532542949085189-WmnK90WIkLVblHTavb1oS70rFvckZd7'
        access_token_secret='nqqMIGpS3n6p0Grf34PxZqmi331Ngfl6I4NKexWx9Fcs9'

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
