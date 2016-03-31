# VizData
Text based data visualizations, made out in [Processing](processing.org)

![VizData image](https://github.com/MOctavio/viz_data/blob/master/img/seeYouAgain.png?raw=true "VizData")

![VizData image](https://github.com/MOctavio/viz_data/blob/master/img/rapGod.png?raw=true "VizData")

## How it works
This app is made of two Processing files:
  - parser
  - viz_data

The parser file reads a given text file, in this case song lyrics to generate a JSON file with some 'unique' attributes obtained from the text; Later on the viz_data will read from the JSON file and generate the corresponding visualization.

## Setup
- Download Processing from their website [here](https://processing.org/download/).
- Clone or download this repo.
- Open the file in processing.

### Generate your own visualizations
Find the variable String file and replace the content with the text file you want to use, it may contain any text, how ever most interesting visualizations are obtained from files with several lines and words.
Once you have changed the source make sure to add some text to be displayed along with the visualization you are going to create.

## Areas of improvement
Everything. That been said the algorithm it's not rocket science, actually it's pretty simple and for each visualization you have to manually change and run the app. Feel free to fork and make a pull request ;) or do your own :)
