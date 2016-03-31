# VizData
Text based data visualizations, made out in [Processing](processing.org)

<img src="https://github.com/MOctavio/viz_data/blob/master/img/seeYouAgain.png?raw=true" width="280" height="280">
<img src="https://github.com/MOctavio/viz_data/blob/master/img/happy.png?raw=true" width="280" height="280">
<img src="https://github.com/MOctavio/viz_data/blob/master/img/rapGod.png?raw=true" width="280" height="280">

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
Once you have changed the source make sure to add some text to be displayed along with the visualization you are going to create, also it's best if you remove any punctuation mark and have everything in lower case.

## Areas of improvement
Everything. That been said the algorithm it's not rocket science, actually it's pretty simple but to generate a visualization you'll have to manually change the variable with the file name and add a description. Feel free to fork and make a pull request ;) or do your own :)
