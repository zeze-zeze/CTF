#! /bin/sh
i=0
while [ $i -le 99 ]
do
  xortool -c $i ./xor | sed -n 14p
  i=$((i+1))
done