#!/bin/bash

echo "Enter a number"
read n

#inital values
  a=0
  b=1
  c=2
  echo "Fibonacci Series $n term"
  echo "$a"
  echo "$b"
  while [ $c -lt $n ]
  do
      ((c=c+1))
      ((d=a+b))
      echo "$d"
      a=$b
      b=$d
  done

