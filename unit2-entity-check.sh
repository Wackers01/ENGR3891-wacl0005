#!/bin/bash
if [ "x$1" = "x" ]; then
  echo "usage: $0 <solution.ldif>"
  exit
fi
# Clear out database
sudo apt-get -y install debconf-utils
sudo apt-get -y purge slapd
echo "slapd slapd/password1 password root" | sudo debconf-set-selections
echo "slapd slapd/password2 password root" | sudo debconf-set-selections
sudo apt-get -y install slapd ldap-utils
# Populate LDAP database
ldapadd -c -x -D cn=admin,dc=nodomain -w root -f $1
# Search LDAP database to get all entities
ldapsearch -o ldif-wrap=no -x -LLL -H ldap:/// -b dc=nodomain \* > entity.log
sort -s entity.log > entity.sort
sort -s unit2-entity-check.txt > check.sort
shasum -a 512 < entity.log | cut -f1 -d" " > entity.sha512
linesdifferent=`diff check.sort entity.sort | wc -l`
lines=`wc -l < entity.sort`
if [ "x$lines" = "x" ]; then
  echo "Couldn't count lines in diff. Maybe something is broken?"
  exit
fi
if [ $linesdifferent -gt $lines ]; then linesdifferent=$lines; fi
diffscore=`echo "74-74*(${linesdifferent}/${lines})" | bc`
hashdiff=`diff entity.sha512 unit2-solution-sha512.txt | wc -l`
hashscore=0
if [ $hashdiff -eq 0 ]; then hashscore=26; fi
echo
echo "DIFF SCORE: ${diffscore}/74 (proportional to correct entities in LDAP)"
echo "HASH SCORE: ${hashscore}/26 (26 points if your LDAP database contains the exact correct entries and structures)"
echo "TOTAL: $((diffscore+hashscore))"
