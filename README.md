# Fasterplaid
This is the matlab code repository for the faster plaid project. The main contributor for this project is [Ru-Yuan Zhang](ruyuanzhang@gmail.com), Hao-Jiang Ying, and Yang Zhang.


## Instructions
### Preparation
1. Please download utility functions from [RZutil](https://github.com/ruyuanzhang/RZutil) and [knkutils](https://github.com/kendrickkay/knkutils), and add the functions to your matlab path. **Please first add RZutil and then knkutils to your path, otherwise you might experience path problems**
2. Make sure you have the proper measure of your monitor. The key factor is ***scale_factor***, which indicates how many acrmin in one screen pixel.

### Running experiment
#### Exp1
1. Set up the plan. For example, you want to collect two component runs and two plaid runs. You'd better arrange the order of runs using a latin-square design matrix.

2. For each run, simply type to run the experiment. Each run has 320 trials and 	should last around 5-6 mins.

	```matlab
	>>compoThresh('RZ')
	```


3. Data will be automatically saved with time stamp. 



## History
* 2019/05/02 RZ created the github repository


## File descriptions
* Exp1 : matlab files for the 1st experiment
 	 * compoThresh.m : the script to measure the duration threshold for component motion
 	 * plaidThresh.m : the script to measure the duration threshold for plaid motion
 	 * envelop.m : the utility function to create temporal envelope.
 	
* old: some old matlab files from a previous experiment. The code serve as reference here
