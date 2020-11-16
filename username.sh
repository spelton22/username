#! /bin/bash
# username.sh
# Sophie Pelton

echo "Enter a username: "
echo "use lower case characters."
echo "it must start with a lower case character."
echo "it must contain at least 3 but not more than 12 characters."

read USERNAME
while echo "$USERNAME" | egrep -v "^[a-z][a-z0-9_]{2,11}$" > /dev/null 2>&1
do
	echo "You must enter a valid username"
	echo "Enter a username: "
	read USERNAME
done
echo "Thank you"
