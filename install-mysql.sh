#!bin/bash

#chek the user have root access or not

USERID = $(id -u)

if[ $USERID -ne 0 ]
then
    echo "ERROR:: you must have the root access to run the script"
    exit 1
fi

#check mysql is alredy install or not ?

dnf list installed mysql

if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0]
    then
        echo "Installed mysql.....failure"

    else
        echo "Installed mysql.....succefull"
    fi
else
    echo "mysql already... installed"
fi
