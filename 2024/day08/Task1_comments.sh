#!/bin/bash
<< hello
hello there this is a multiline comment
hello

#for loop to print numbers from 1 to 5
for i in {1..5}
do
  echo "Number: $i"
done

: '
end
of 
the 
script
'
