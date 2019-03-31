#!/bin/bash
mkdir -m 775 unit1exercise2
mkdir -m 755 unit1exercise2/zerfahrheit
mkdir -m 775 unit1exercise2/aufhundst
mkdir -m 775 unit1exercise2/gesinns
mkdir -m 775 unit1exercise2/beschmecks
mkdir -m 775 unit1exercise2/verschmecktete
mkdir -m 775 unit1exercise2/anfahrtete
mkdir -m 775 unit1exercise2/anfahrung
mkdir -m 775 unit1exercise2/aufsetzst
mkdir -m 775 unit1exercise2/anfahrung/aussetzkeit
mkdir -m 775 unit1exercise2/beschmecks/einhaltte
mkdir -m 775 unit1exercise2/aufsetzst/auflaufte
mkdir -m 775 unit1exercise2/gesinns/einkraust
mkdir -m 775 unit1exercise2/anfahrung/ausrabarbse
mkdir -m 347 unit1exercise2/beschmecks/einhaltte/befahrse
mkdir -m 161 unit1exercise2/beschmecks/einhaltte/ensitztest
mkdir -m 514 unit1exercise2/anfahrung/ausrabarbse/entrittse
mkdir -m 246 unit1exercise2/anfahrung/ausrabarbse/anschmecktete
mkdir -m 473 unit1exercise2/beschmecks/einhaltte/einkatzeung
mkdir -m 250 unit1exercise2/gesinns/einkraust/anstehung
mkdir -m 32 unit1exercise2/anfahrung/aussetzkeit/aushaltkeit

chmod -c 27 unit1exercise2/zerfahrheit
chmod -c 730 unit1exercise2/aufhundst
chmod -c 637 unit1exercise2/gesinns
chmod -c 602 unit1exercise2/beschmecks
chmod -c 547 unit1exercise2/verschmecktete
chmod -c 411 unit1exercise2/anfahrtete
chmod -c 657 unit1exercise2/anfahrung
chmod -c 475 unit1exercise2/aufsetzst
sudo chmod -c 416 unit1exercise2/anfahrung/aussetzkeit
sudo chmod -c 526 unit1exercise2/beschmecks/einhaltte
sudo chmod -c 373 unit1exercise2/aufsetzst/auflaufte
sudo chmod -c 46 unit1exercise2/gesinns/einkraust
sudo chmod -c 613 unit1exercise2/anfahrung/ausrabarbse

sudo chown -c lp:news unit1exercise2/zerfahrheit
sudo chown -c proxy:news unit1exercise2/aufhundst
sudo chown -c news:floppy unit1exercise2/gesinns
sudo chown -c nobody:news unit1exercise2/beschmecks
sudo chown -c lp:dip unit1exercise2/verschmecktete
sudo chown -c mail:dip unit1exercise2/anfahrtete
sudo chown -c uucp:cdrom unit1exercise2/anfahrung
sudo chown -c news:cdrom unit1exercise2/aufsetzst
sudo chown -c news:voice unit1exercise2/anfahrung/aussetzkeit
sudo chown -c proxy:cdrom unit1exercise2/beschmecks/einhaltte
sudo chown -c student:cdrom unit1exercise2/aufsetzst/auflaufte
sudo chown -c student:fax unit1exercise2/gesinns/einkraust
sudo chown -c uucp:student unit1exercise2/anfahrung/ausrabarbse
sudo chown -c student:dip unit1exercise2/beschmecks/einhaltte/befahrse
sudo chown -c uucp:mail unit1exercise2/beschmecks/einhaltte/ensitztest
sudo chown -c news:dip unit1exercise2/anfahrung/ausrabarbse/entrittse
sudo chown -c games:cdrom unit1exercise2/anfahrung/ausrabarbse/anschmecktete
sudo chown -c uucp:floppy unit1exercise2/beschmecks/einhaltte/einkatzeung
sudo chown -c uucp:cdrom unit1exercise2/gesinns/einkraust/anstehung
sudo chown -c proxy:news unit1exercise2/anfahrung/aussetzkeit/aushaltkeit



sudo tar -cvzf unit1-solution2.tgz unit1exercise2

