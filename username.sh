#! /bin/bash
# username.sh
# Emily Nguyen 
echo "The rules for a valid username are:"
echo "- The only characters that can be used are lower case letters, digits, and the underscore character"
echo "- It must start with a lower case letter"
echo "- It must contain at least three, but no more than 12 characters"
echo "Enter a valid username: "
read USERNAME 
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a valid username!"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
