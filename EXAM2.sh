ranArray=()

for (( i=0 ; i<=10 ; i++ ));
do
	ranArray[i]=$((RANDOM % 900 + 100 ))
	#echo ${ranArray[i]}
done

echo "Random Array = ${ranArray[@]}"

#	Write a program that does the following
#DONE	a. Generates 10 Random 3 Digit number.
#DONE	b. Store this random numbers into a array.
#done	c. Then find the 2nd largest and the 2nd smallest element without sorting the array.

smallest=${ranArray[0]}
s_smallest=999

largest=0
s_largest=1

for n in ${ranArray[@]} ;
do
	#	echo "$n"
	#if n is smaller than smallest number
	#smallest = n
	if [[ $n -lt $smallest ]]; then
		s_smallest=$smallest
		smallest=$n
	#if n is not equal or smaller than smallest then its s_smallest. but smaller than the rest
	elif [[ $n -lt $s_smallest && $n -ne $smallest ]]; then
		s_smallest=$n
	fi

	#if n is largest than largest number
	#largest = n
	if [[ $n -gt $largest ]]; then
		s_largest=$largest
		largest=$n
	elif [[ $n -gt $s_largest && $n -ne $largest ]]; then
		s_largest=$n
	fi
done

echo "Smallest $smallest"
echo "2nd Smallest $s_smallest"

echo "Largest $largest"
echo "2nd Largest $s_largest"
