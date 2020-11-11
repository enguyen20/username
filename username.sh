#! /bin/bash
# username.sh
# Emily Nguyen 
echo "Enter a username: "
echo "The rules are:"
echo "The only characters that can be used are"
echo "- lower case letters,"
echo "- digits, and"
echo "- the underscore character"
echo "It must start with a lower case letter"
echo "It must contain at least three but no more than 12 characters"
read ZIP
while echo "$ZIP" | egrep -v "^[a-z][0-9]{5}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username: "
	read ZIP
done
echo "Thank you"
