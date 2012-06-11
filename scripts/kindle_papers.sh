#!/bin/bash
 
kindle_email="username@Kindle.com"
 
total=`ls *.pdf | wc -l`
counter=1
 
echo "Total number of PDFs: $total"
 
for pdf in *.pdf
do
  echo -n "Sending ($counter/$total): $pdf"
 
  mutt -s "Convert" -a "$pdf" -- $kindle_email < ~/bin/mailmessage.txt
 
  if [[ $? -ne 0 ]]
  then
    echo " > ERROR!"
  else
    echo " > Done."
  fi
 
  sleep 20
 
  ((counter++))
 
done
