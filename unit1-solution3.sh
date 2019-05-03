#!/bin/sh
alias m="mkdir -p -m"
m 775 unit1exercise3
m 755 unit1exercise3/ausgesetztete
m 775 unit1exercise3/zergehtest
m 775 unit1exercise3/angestehte
m 775 unit1exercise3/gekaesheit
m 775 unit1exercise3/auffahrtete
m 775 unit1exercise3/zertrautete
m 775 unit1exercise3/aufwarftete
m 775 unit1exercise3/verrabarbkeit

m 775 unit1exercise3/zergehtest/getrauen
m 775 unit1exercise3/auffahrtete/angesprachung
m 775 unit1exercise3/verrabarbkeit/zerfahren
m 775 unit1exercise3/aufwarftete/zerlaufse
m 775 unit1exercise3/zertrautete/aufgewitzung




m 323 unit1exercise3/zergehtest/getrauen/angewarftete
m 264 unit1exercise3/verrabarbkeit/zerfahren/angegeher
m 251 unit1exercise3/verrabarbkeit/zerfahren/zerwitztest
m 323 unit1exercise3/zergehtest/getrauen/angekrause
m 465 unit1exercise3/zertrautete/aufgewitzung/angetrittheit
m 564 unit1exercise3/zertrautete/aufgewitzung/zerkatzeung
m 521 unit1exercise3/zertrautete/aufgewitzung/angewarft

chmod -c 524 unit1exercise3/ausgesetztete
chmod -c 240 unit1exercise3/zergehtest
chmod -c 337 unit1exercise3/angestehte
chmod -c 447 unit1exercise3/gekaesheit
chmod -c 523 unit1exercise3/auffahrtete
chmod -c 161 unit1exercise3/zertrautete
chmod -c 472 unit1exercise3/aufwarftete
chmod -c 613 unit1exercise3/verrabarbkeit


sudo chmod -c 714 unit1exercise3/zergehtest/getrauen
sudo chmod -c 515 unit1exercise3/auffahrtete/angesprachung
sudo chmod -c 021 unit1exercise3/verrabarbkeit/zerfahren
sudo chmod -c 525 unit1exercise3/aufwarftete/zerlaufse
sudo chmod -c 720 unit1exercise3/zertrautete/aufgewitzung

sudo chown -c student:cdrom unit1exercise3/ausgesetztete
sudo chown -c uucp:fax unit1exercise3/zergehtest
sudo chown -c student:mail unit1exercise3/angestehte
sudo chown -c student:uucp unit1exercise3/gekaesheit
sudo chown -c lp:floppy unit1exercise3/auffahrtete
sudo chown -c student:news unit1exercise3/zertrautete
sudo chown -c games:audio unit1exercise3/aufwarftete
sudo chown -c news:audio unit1exercise3/verrabarbkeit

sudo chown -c games:proxy unit1exercise3/zergehtest/getrauen
sudo chown -c lp:voice unit1exercise3/auffahrtete/angesprachung
sudo chown -c news:fax unit1exercise3/verrabarbkeit/zerfahren
sudo chown -c student:audio unit1exercise3/aufwarftete/zerlaufse
sudo chown -c uucp:dip unit1exercise3/zertrautete/aufgewitzung

sudo chown -c lp:fax unit1exercise3/zergehtest/getrauen/angewarftete
sudo chown -c student:tape unit1exercise3/verrabarbkeit/zerfahren/angegeher
sudo chown -c news:floppy unit1exercise3/verrabarbkeit/zerfahren/zerwitztest
sudo chown -c uucp:cdrom unit1exercise3/zergehtest/getrauen/angekrause
sudo chown -c games:audio unit1exercise3/zertrautete/aufgewitzung/angetrittheit
sudo chown -c nobody:audio unit1exercise3/zertrautete/aufgewitzung/zerkatzeung
sudo chown -c lp:news unit1exercise3/zertrautete/aufgewitzung/angewarft



sudo tar -cvzf unit1-solution3.tgz unit1exercise3

