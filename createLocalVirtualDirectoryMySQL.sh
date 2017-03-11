#!/bin/sh

# Create Locale Virtual Directory

echo "
Create Local Web and MySQL - CLWM
"

if [ -z "$1" ]
then
	echo "
 - One parameter is necessary!
"
	exit 1
fi

mkdir -p $1/private
mkdir -p $1/tmp
mkdir -p $1/web

mysql -u root -p -e "CREATE DATABASE $1 CHARACTER SET utf8 COLLATE utf8_general_ci;GRANT ALL PRIVILEGES ON $1.* TO $1@'localhost' IDENTIFIED BY '$1';"

echo "
It's created $1 direcotry:
$1
-$1/web
-$1/private
-$1/tmp

It's created a MySQL database:
Host: localhost
Database Name: $1
Database User: $1
User Password: $1
"
