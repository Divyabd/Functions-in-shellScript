 #! /usr/bin/bash
 echo "hello divya" # hello this is how u can declare comments

#+==================system variables====================

# system variables which are capital 
echo "where bash file present $BASH"
echo present working directry $PWD
echo  $SHELL
echo $HOME
echo current working user  $USER

#==================user defined variables=================
 usrvariable=divya 
 int10="welcome 10"
 echo user defined variable $usrvariable 
 echo $int10

 #===============taking input from the terminal==============

 echo enter ur mid:
 read mid            # read is used to take the command from the terminal 
 echo entered $mid

# =========take the input from the same line =====

read -p "enter mid " mid               # to enter the input in the same line use -p
read -sp "ente the password" passwords  # to hidevthe password use -sp
echo
echo mid is $mid

#============print array=================

echo "enter the names for array"
read  -a names      # take array of inputs from the user so used -a
echo names are ${names[0]}.${names[1]}


#==========reply system variable==========

read
echo "without declaring a variable " $REPLY


#============arguments ============


# echo $@   # to print the arguments passed from user
#  echo $# # to print the number of  arguments passed from used

 #============conditions==============

variable=123
if (($variable==123)) # u can use gt ,eq ,ne, lt,>,<,<=,>=,!=,=,==......to compare 
 then 
    echo variable is equal
 else
    echo variable is not equal
fi


    #for comapring of words with nested if else

    variable=word
if (($variable==123)) # u can use gt ,eq ,ne, lt,>,<,<=,>=,!=,=,==......to compare 
 then 
    echo variable is number
elif (($variable==word))
  then
      echo variable is equal
 else
    echo variable is not equal
fi


#===================checking about files and director==================

echo -e "enter the file which u want : \c"
read file_name

if [ -x $file_name ]  # use -f to check file is normalfile or not -s to check empty or not -r to check  read  permision -w to write -x to execute
  then 
    echo "file present"
  else
    echo "file  not present"
fi

#==================append data to the file====================================

echo -e "enter the file which u want : \c"
read file_name

if [ -f $file_name ]  # use -f to check file is normalfile or not -s to check empty or not -r to check  read  permision -w to write -x to execute
then 
    if [ -w $file_name ]
    then 
        echo "ënter the data u want to append in the file for exit press ctl+d"
        cat >> $file_name
    else 
         echo "no write permision fpr this file"
    fi
else
   echo "file  not present"
fi