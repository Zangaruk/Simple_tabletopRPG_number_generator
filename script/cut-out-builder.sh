#!/Bin/Bash

#This if statment verifies that the selected directory exists
if [[ -e '/e/B&B 3rd cards/B&B_cutouts' ]]
	then
	cd '/e/B&B 3rd cards/B&B_cutouts'
	else
	mkdir -p '/e/B&B 3rd cards/B&B_cutouts' && cd '/e/B&B 3rd cards/B&B_cutouts'
fi

if [[ -e '/e/B&B 3rd cards/B&B_cutouts'$1.txt ]]
then
	echo "$1 already exists select another name"
exit
fi

#This function allows for 1 random class to be chosen by creating an array then using shuf to randomly pull from said array
 function add_class {
	class_array=(Fighter Runner Scout Maverick Empath Seer Herbalist Storyteller)
	for i in {1};
		do printf "%s\n" ${class_array[@]} | shuf | sed -n '1p';
	done

}

#This Function pulls 1 stat number out per stat
function add_stats {
	shuf -i 3-18 -n 1

}

#$1 prints the characters name to the top of the sheet
echo "Name: $1" >> $1.txt
#Prints a random class
class=$(add_class)
echo -e "Profession: $class \n" >> $1.txt
#prints stats for each stat
mstr=$(add_stats)
mspd=$(add_stats)
mint=$(add_stats)
magi=$(add_stats)
mcon=$(add_stats)
mmys=$(add_stats)
msml=$(add_stats)
mcha=$(add_stats)

#This set of functions sets what a charcters base bonus will be for each individule stat
function setstr {
	if [[ $mstr -le  12 ]]
		then
        	echo 0
	elif [[ $mstr -le 15 ]]
		then
        	echo 1
	elif [[ $mstr -le 17 ]]
		then
        	echo 2
	elif [[ $mstr -le 20 ]]
		then
        	echo 3
	fi
}

function setspd {
        if [[ $mspd -le  12 ]]
                then
                echo 0
        elif [[ $mspd -le 15 ]]
                then
                echo 1
        elif [[ $mspd -le 17 ]]
                then
                echo 2
        elif [[ $mspd -le 20 ]]
                then
                echo 3
        fi
}

function setint {
        if [[ $mint -le  12 ]]
                then
                echo 0
        elif [[ $mint -le 15 ]]
                then
                echo 1
        elif [[ $mint -le 17 ]]
                then
                echo 2
        elif [[ $mint -le 20 ]]
                then
                echo 3
        fi
}

function setagi {
        if [[ $magi -le  12 ]]
                then
                echo 0
        elif [[ $magi -le 15 ]]
                then
                echo 1
        elif [[ $magi -le 17 ]]
                then
                echo 2
        elif [[ $magi -le 20 ]]
                then
                echo 3
        fi
}

function setcon {
        if [[ $mcon -le  12 ]]
                then
                echo 0
        elif [[ $mcon -le 15 ]]
                then
                echo 1
        elif [[ $mcon -le 17 ]]
                then
                echo 2
        elif [[ $mcon -le 20 ]]
                then
                echo 3
        fi
}

function setmys {
        if [[ $mmys -le  12 ]]
                then
                echo 0
        elif [[ $mmys -le 15 ]]
                then
                echo 1
        elif [[ $mmys -le 17 ]]
                then
                echo 2
        elif [[ $mmys -le 20 ]]
                then
                echo 3
        fi
}

function setsml {
        if [[ $msml -le  12 ]]
                then
                echo 0
        elif [[ $msml -le 15 ]]
                then
                echo 1
        elif [[ $msml -le 17 ]]
                then
                echo 2
        elif [[ $msml -le 20 ]]
                then
                echo 3
        fi
}

function setcha {
        if [[ $mcha -le  12 ]]
                then
                echo 0
        elif [[ $mcha -le 15 ]]
                then
                echo 1
        elif [[ $mcha -le 17 ]]
                then
                echo 2
        elif [[ $mcha -le 20 ]]
                then
                echo 3
        fi
}

#This sets the random rolls for stats and the base bonuses to one variable
str="$mstr + $(setstr)"
spd="$mspd + $(setspd)"
int="$mint + $(setint)"
agi="$magi + $(setagi)"
con="$mcon + $(setcon)"
mys="$mmys + $(setmys)"
sml="$msml + $(setsml)"
cha="$mcha + $(setcha)"

echo -e "STR $str \nSPD $spd \nINT $int \nAGI $agi \nCON $con \nMYS $mys \nSML $sml \nCHA $cha" >> $1.txt

#HP is 8 plus a persons CON bonus #Movement per hex outside of combat is 200 plus 100 per base spd bonus #In combat movement is dictated by MP(movement points) which is 2 + base speed bonus)
echo -e "\nHitPoints: $(( $(setcon) + 8 )) \nMovement per hex: $(( $(setspd)00 + 200 )) \tMovement Points: $(( $(setspd) + 2 ))" >> $1.txt
