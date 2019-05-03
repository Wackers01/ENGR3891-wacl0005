#!/bin/sh
alias m="mkdir -p -m"
m 775 unit1exercise2
m 755 unit1exercise2/verhalttete
m 775 unit1exercise2/austrauheit
m 775 unit1exercise2/angetrauer
m 775 unit1exercise2/aufschmeckst
m 775 unit1exercise2/einfahren
m 775 unit1exercise2/zerrabarbt
m 775 unit1exercise2/ausgerauchkeit
m 775 unit1exercise2/zerkatzete

m 775 unit1exercise2/einfahren/angesinnte
m 775 unit1exercise2/zerrabarbt/einwarft
m 775 unit1exercise2/ausgerauchkeit/aufgeklettkeit
m 775 unit1exercise2/angetrauer/ensetzkeit
m 775 unit1exercise2/aufschmeckst/ausgerauchte

m 544 unit1exercise2/ausgerauchkeit/aufgeklettkeit/gesetzer
m 626 unit1exercise2/zerrabarbt/einwarft/verfahrs
m 646 unit1exercise2/zerrabarbt/einwarft/aufgetritts
m 707 unit1exercise2/angetrauer/ensetzkeit/aufhalttete
m 047 unit1exercise2/einfahren/angesinnte/geklettt
m 520 unit1exercise2/ausgerauchkeit/aufgeklettkeit/einwitzt
m 120 unit1exercise2/einfahren/angesinnte/ausfahrse

chmod -c 525 unit1exercise2/verhalttete
chmod -c 411 unit1exercise2/austrauheit
chmod -c 010 unit1exercise2/angetrauer
chmod -c 373 unit1exercise2/aufschmeckst
chmod -c 700 unit1exercise2/einfahren
chmod -c 566 unit1exercise2/zerrabarbt
chmod -c 616 unit1exercise2/ausgerauchkeit
chmod -c 023 unit1exercise2/zerkatzete

sudo chmod -c 752 unit1exercise2/einfahren/angesinnte
sudo chmod -c 773 unit1exercise2/zerrabarbt/einwarft
sudo chmod -c 145 unit1exercise2/ausgerauchkeit/aufgeklettkeit
sudo chmod -c 147 unit1exercise2/angetrauer/ensetzkeit
sudo chmod -c 550 unit1exercise2/aufschmeckst/ausgerauchte

sudo chown -c uucp:proxy unit1exercise2/verhalttete
sudo chown -c uucp:mail unit1exercise2/austrauheit
sudo chown -c proxy:uucp unit1exercise2/angetrauer
sudo chown -c uucp:audio unit1exercise2/aufschmeckst
sudo chown -c student:news unit1exercise2/einfahren
sudo chown -c student:audio unit1exercise2/zerrabarbt
sudo chown -c nobody:uucp unit1exercise2/ausgerauchkeit
sudo chown -c nobody:news unit1exercise2/zerkatzete

sudo chown -c uucp:proxy unit1exercise2/einfahren/angesinnte
sudo chown -c lp:uucp unit1exercise2/zerrabarbt/einwarft
sudo chown -c nobody:floppy unit1exercise2/ausgerauchkeit/aufgeklettkeit
sudo chown -c mail:proxy unit1exercise2/angetrauer/ensetzkeit
sudo chown -c proxy:dip unit1exercise2/aufschmeckst/ausgerauchte

sudo chown -c mail:news unit1exercise2/ausgerauchkeit/aufgeklettkeit/gesetzer
sudo chown -c nobody:news unit1exercise2/zerrabarbt/einwarft/verfahrs
sudo chown -c news:news unit1exercise2/zerrabarbt/einwarft/aufgetritts
sudo chown -c news:tape unit1exercise2/angetrauer/ensetzkeit/aufhalttete
sudo chown -c lp:news unit1exercise2/einfahren/angesinnte/geklettt
sudo chown -c proxy:mail unit1exercise2/ausgerauchkeit/aufgeklettkeit/einwitzt
sudo chown -c proxy:tape unit1exercise2/einfahren/angesinnte/ausfahrse



sudo tar -cvzf unit1-solution2.tgz unit1exercise2

