# Activity analysis
Basic twitter sentiment analysis. Server is provided.



## Get Started
In oder to use the service you have to fill your twitter credentials into the config.yml file.   

Run command below to give rights to execute bash scripts.
```bash
chmod +x start.sh scripts/dependencies.sh scripts/jupyter.sh scripts/virtualenv.sh
```

Run ```bash ./start.sh``` for jupyter notebook.   

After running the start.sh change Kernel in your jupyter notebook to ```venv```.

Run ```bash ./start_server.sh``` for flask server.  

## Usage
Open ``` http://localhost:5001/tweets?query=[YOUR_SEARCH_INPUT] ```   
e.g. ``` http://localhost:5001/tweets?query=motivation ```

See @Patiopatio 's https://github.com/Patiopatio/twitter_sentiment_analysis project for usage of the server and a nice UI for the sentiment analysis.  

## Dependencies:
See requirements.txt

## Credits to
Siraj twitter analysis: https://github.com/llSourcell/twitter_sentiment_challenge
