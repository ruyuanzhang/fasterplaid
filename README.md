# Fasterplaid
This is the matlab code repository for the faster plaid project. The main contributor for this project is [Ru-Yuan Zhang](ruyuanzhang@gmail.com), Hao-Jiang Ying, and Yang Zhang.

## Plan
#### Exp 1
* Exp 1 aims to replicate the results in previous scientific report paper
* Exp 2 aims to control michaelson contrast, RMS contrast (setting grating to contrast 70.7%) and speed.
* In Exp 3, we vary the spatial frequency and temporal frequency (speed) to tested the robustness of this effect.


## Instructions
### Preparation
1. Please download utility functions from [RZutil](https://github.com/ruyuanzhang/RZutil) and [knkutils](https://github.com/kendrickkay/knkutils), and add the functions to your matlab path. **Please first add knkutils and the RZutil to your path, otherwise you might experience path problems**
2. Make sure you have the proper measure of your monitor. The key factor is ***scale_factor***, which indicates how many acrmin in one screen pixel.

### Running experiment
#### Exp1
1. Set up the plan. For example, you want to collect two component runs and two plaid runs. You'd better arrange the order of runs using a latin-square design matrix.

2. For each run, simply type to run the experiment. Each run has 320 trials and 	should last around 5-6 mins.

	```matlab
	>>compoThresh('RZ')
	```


3. Data will be automatically saved with time stamp.

#### Exp2
1. Exp 2 includes two conditions:mls (michaelson contrast matching) and rms (rms contrast matching). We need to collect a set of data (two runs of grating and two runs of plaid) for each condition.

2. The function can be run using the same method

	```matlab
	>>compoThresh_mls('RZ')
	```


## History
* 2019/05/02 RZ created the github repository


## File descriptions
* Exp1 : matlab files for the 1st experiment
 	 * compoThresh.m : the script to measure the duration threshold for component motion
 	 * plaidThresh.m : the script to measure the duration threshold for plaid motion
 	 * envelop.m : the utility function to create temporal envelope.

* Exp2 : matlab files for the 1st experiment
 	 * compoThresh_mls.m and plaidThresh_mls: same as the scripts in Exp 1 but we control the michaelson contrast and speed in component grating stimuli. 
 	 * compoThresh_rms.m and plaidThresh_rms : same as the scripts in Exp 1 but we control the rms contrast and speed in component grating stimuli.
 	 * envelop.m : the utility function to create temporal envelope.
 	
* old: some old matlab files from a previous experiment. The code serve as reference here



# Research progress and thoughts
#### 20190626
* The 1st experiment is finished and the results is promising. The duration threshold on component motion is higher than the plaid motion.
* In the 2nd experiment, we want to control contrast (michaelson contrast, RMS contrast) and speed  