# Simple_tabletopRPG_number_generator

[Click here for the script](https://github.com/Zangaruk/Simple_tabletopRPG_number_generator/blob/main/script/cut-out-builder.sh)

This is a basic skeleton of a bash script that will varify directory existance and file existance
If your filename already exists then the script will terminate asking you to rerun the script with a new name

Asides from this the script is meant to be modified to suit your needs
The underlined portions are meant to be changed

![image alt text](https://github.com/Zangaruk/Simple_tabletopRPG_number_generator/blob/main/Extra_Material/naming.jpg)

'/e/B&B 3rd cards/B&B_cutouts' is the placeholder direction of where the script points to.
Now as for the file name and syntax for using the script you will want to run as so:
(./cut-out-builder.sh "whatever filename you would like")

Next the script creates an array that will hold classes, titles, job, etc which will then be shuffled and then the top result will be printed out to the file that the script will make.

Next we create a sudo random number generator for character stats showing a number between 3-18 using the shuf command. The function will be added to multiple variable one for each stat making a static number for us to work with on down the line.

Then we make if statements for each stat createing a variable that will add a bonus number that will be put next to the output of the number.

here is an example of the file output when run

![image alt text](https://github.com/Zangaruk/Simple_tabletopRPG_number_generator/blob/main/Extra_Material/James.jpg)