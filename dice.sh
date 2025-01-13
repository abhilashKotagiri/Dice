num_random1=
num_random2=
num=

echo Welcome to  Dice 1.0
echo "    Created by \n
           K SWEYN \n
           Copyright
           "
rollDice(){
    min=2
    max=6
    num_random1=$((RANDOM % (max - min + 1) + min))
    num_random2=$((RANDOM % (max - min + 1) + min))
    
}

validateUserInput(){

while : 

do 
echo Enter a number
read num

echo Validating user input

if [ $num -gt 1 ] && [ $num -lt 13 ]; then
echo you have chosen $num
break

else 
echo Incorrect number betgween 2 and 12

fi
done
}

for i in [1 2 3];
do 
validateUserInput

echo Rolling Dice...
sleep 2
rollDice
echo And the numbers are $num_random1 , $num_random2


if [ $[num_random1+num_random2] = $num ]; then
    echo You Win!
    break

elif [ $i = 3] ]; then
echo All 3 attempts done
echo GAME OVER !!
else echo Try again
continue
fi
done





