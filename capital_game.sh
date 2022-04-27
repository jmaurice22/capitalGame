#!/bin/bash
echo "*** Do you know what states make up the orginal 13 colonies? ***"
echo "*** Test your kowledge here *** "
echo You have 3 chances
echo 
# supposed to be a flag with 13 stars
echo "--------------------------------------"
echo "--***---------------------------------"
echo "*     *-------------------------------"
echo "*     *-------------------------------"
echo "*     *-------------------------------"
echo "*     *-------------------------------"
echo "  ** ---------------------------------"
echo "--------------------------------------"
echo "--------------------------------------"
#file containing all the states
states="./states.txt"
#user trys
trys=3
#random state selected from list
state="$(shuf -n 1 $states)"
echo
# echo the random state selected
echo $state
echo
answer=""
#conditionals for the answer based on the randomly selected state
if [ $state == "Connecticut" ] || [ $state == "Georgia" ] || [ $state == "Massachusetts" ] || [ $state == "Maryland" ] || [ $state == "New Hampshire" ] || [ $state == "New York" ] || [ $state == "South Carolina" ] || [ $state == "Virginia" ]
then
    answer="1788"
elif [ $state == "New Jersey" ] || [ $state == "Delaware" ] || [ $state == "Pennsylvania" ]
then
    answer="1787"
elif [ $state == "North Carolina" ]
then
    answer="1789"
else
    answer="1790"
fi

#for loop for theree guesses
for i in {1..3}
do
   #prompt user for answer
   read -p "What year did this state gain statehood?: " year
   # if guess is correct let the user know they are correct and exit the loop
   if [ $year == $answer ];
   then
    echo "*** Correct Answer! Well Done! ***"
    break
   fi
   # decrement the number of guesses left
   ((trys=trys-1))
   echo "you have $trys left"
done