 #! /usr/bin/bash
#==================================================
 # 2 ways to declare functions
 # 1st way 

#  function Hello(){
#   echo "name"
#  }

 # 2nd way
Hello(){
    echo "Hello mindtree welcome to possible"
}

quit(){
    exit
}
 
 #===========================================

 # passinf arguments into functions
 passArgs(){
     echo $1 $2
     echo $3
 }

 #=================================================

 # local variabes
 localvar(){
  local num=$1
     echo $num
 }


#==========================================

# sample addittional program 

add(){
local num1=$1
local num2=$2
echo addition of 2 number is $(($num1+$num2))
}

#================================================
#1 function calling another function
sub(){
if [ $1 -ge "0"  ]
  then 
      if [ $2 -ge "0"  ]
            then echo "value assigned"
            else echo "-ve values not allowed"
  
      fi
    
  else echo "-ve values not allowed"
fi
local num1=$1
local num2=$2
if [ $num1 -le $num2  ]
   then 
       echo "please enter positive numbets"
   else
      if [ $num1 -lt $num2 ]
         then
            echo "we cant do substraction $num1 must be greater than $num2"
        else
            echo "sub is $(($num1-$num2)) "

      fi
fi
}
#============================================
#calling functions 


Hello  # calling functions
print
passArgs hello Divya DII   #passing arguments as variables
num=980
echo $num
localvar 123
echo $num
add 3 4
sub  0 3
sub  -5 3
quit  # calling functions