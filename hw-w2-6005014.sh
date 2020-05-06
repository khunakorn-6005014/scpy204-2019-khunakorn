#!/bin/bash
echo -n "hello may i ask your name?:"
read
echo "hello $REPLY"

read -p "enter your age:" val
echo "your age is $val old"

echo "your gender(men,women,other):"
while :
do
	read INPUT_STRING
	case $INPUT_STRING in
		men)
			echo "you are men gender"
			break
			;;
		women)
			echo "you are women gender"
			break
			;;
		other)
			echo "you are other gender"
			break
			;;
		*)
			echo "Sorry, I don't understand please rewrite"
			;;
	esac
done
echo "Have you just come  back from risk countries?(Put number)"
select os in china hongkong macau italy japan southkorea USA germany france iran none
do
	case $os in


	
		"china"|"hongkong"|"macau"|"italy"|"japan"|"southkorea"|"USA"|"germany"|"france"|"iran")
			echo "you came from $os where is risk countries please go to see doctor. "
			break
			;;


		
		"none")
			echo "Congratulation you are not from risk countries"
			break
			;;


		
		*)
			echo "Please rewrite number "
			;;
	esac
done

echo "Do you have symptoms of covid-19  in this list"
choice () {
	local choice=$1
	if [[ ${opts[choice]} ]] # toggle
	then
		opts[choice]=
	else
		opts[choice]=+
	fi
}

PS3='Please enter your choice: '
while :
do
	options=("Cough ${opts[1]}" "Shortness breath ${opts[2]}" "Sore throat ${opts[3]}" "Runny nose ${opts[4]}" "Fever ${opts[5]}" "Done" "none")
	select opt in "${options[@]}"
	do
		case $opt in
			"Cough ${opts[1]}")
				choice 1
				break
				;;
			"Shortness breath ${opts[2]}")
				choice 2
				break
				;;
			"Sore throat ${opts[3]}")
				choice 3
				break
				;;
			"Runny nose ${opts[4]}")
				choice 4
				break
				;;
			"Fever ${opts[5]}")
				choice 5
				break
				;;
			"none")
				echo "Congratulation you free from covid-19"
				break 2
				;;
			"Done")
				break 2
				;;
			*)
				printf '%s\n' 'Sorry i dont understand please rewrite'
				;;
		esac
	done
done
printf '%s\n' 'Options chosen:'
for opt in "${!opts[@]}"
do
	if [[ ${opts[opt]} ]]
	then
		printf '%s\n' "you have a symptom No. $opt (you are at risk of covid-19 please go to see doctor)"
	fi



done
