Guideline to play with ToyRobot
================================

This is simulation application for Toy Robot.

The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units*5 units.

Installation

clone this repository your local machine. But before make sure you have installed GIT on your local PC.

	git clone https://github.com/sampathaya/ToyRobot.git

above command will create a local folder on your PC. CD in to ToyRobot folder.

if you are running on linux flavoured environmnet then from your terminal enter the following command

	ruby ToyRobot.rb

if you are running on windows then open the IRB and run the following command first.


	require 'fileutils'
	FileUtils.pwd
	FileUtils.cd '/path/to/location'

then 

	load './ToyRobot.rb'

How to operate?

place robot on table.

	place,<x coordinate>,<y coordinate>,<orientation>

	ex. place,3,4,north

this will place the robot on 3,4 position and robot is ready to move north. 
you can use north, west, south, east as orientation.

to move robot use following command.

	move

this will move robot by one unit. orientation is important and robot will move bases on the orientation.

this application is designed for maximum 5*5 space. so you have to use cooridinates accordingly. if robot met border then you 
have to rotate to further moves.

you can use left and right command to rotate robot by 90 degrees.

you will get warnings if you are using illegal moves.

for further clarifiactions please contact sampathnisha@yahoo.com

Cheers!!!!
