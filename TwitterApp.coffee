if process.argv.length > 2
	keyword = process.argv[2]
	
	keyword_tweets_stream = require("keyword-tweets-stream")
	keyword_tweets_stream.getTweetsStream keyword, (tweet_text)-> console.log("Tweet: " + tweet_text)
else
	console.log("Type a keyword after 'node TwiiterApp.js' command")