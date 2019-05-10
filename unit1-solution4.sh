#!/bin/bash
mkdir -p -m 775 unit1exercise4
mkdir -p -m 755 unit1exercise4/ausschmecker
mkdir -p -m 775 unit1exercise4/aufwitzte
mkdir -p -m 775 unit1exercise4/verpflums
mkdir -p -m 775 unit1exercise4/zertrauung
mkdir -p -m 775 unit1exercise4/aufgehalttete
mkdir -p -m 775 unit1exercise4/angesinner
mkdir -p -m 775 unit1exercise4/angewarfen
mkdir -p -m 775 unit1exercise4/engehte

mkdir -p -m 775 unit1exercise4/engehte/aufgekaess
mkdir -p -m 775 unit1exercise4/angewarfen/aufkaestete
mkdir -p -m 775 unit1exercise4/engehte/aufrabarbs
mkdir -p -m 775 unit1exercise4/angewarfen/ausgepflumung
mkdir -p -m 775 unit1exercise4/zertrauung/verschmeckst

mkdir -p -m 416 unit1exercise4/angewarfen/ausgepflumung/aufgehaltung
mkdir -p -m 163 unit1exercise4/angewarfen/aufkaestete/angewitzse
mkdir -p -m 442 unit1exercise4/angewarfen/ausgepflumung/gefahrkeit
mkdir -p -m 077 unit1exercise4/engehte/aufgekaess/angekaestest
mkdir -p -m 654 unit1exercise4/engehte/aufrabarbs/befahrse
mkdir -p -m 130 unit1exercise4/engehte/aufrabarbs/ankatzese
mkdir -p -m 060 unit1exercise4/engehte/aufrabarbs/angehundse

chmod -g+s -c 172 unit1exercise4/ausschmecker
chmod -c 066 unit1exercise4/aufwitzte
chmod -c 125 unit1exercise4/verpflums
chmod -c 355 unit1exercise4/zertrauung
chmod -g+s -c 044 unit1exercise4/aufgehalttete
chmod -g+s -c 024 unit1exercise4/angesinner
chmod -g+s -c 104 unit1exercise4/angewarfen
chmod -c 572 unit1exercise4/engehte

sudo chmod -c 567 unit1exercise4/engehte/aufgekaess
sudo chmod -c 404 unit1exercise4/angewarfen/aufkaestete
sudo chmod -c 263 unit1exercise4/engehte/aufrabarbs
sudo chmod -c 005 unit1exercise4/angewarfen/ausgepflumung
sudo chmod -c 231 unit1exercise4/zertrauung/verschmeckst

sudo chown -c :uucp unit1exercise4/ausschmecker
sudo chown -c :voice unit1exercise4/aufwitzte
sudo chown -c :news unit1exercise4/verpflums
sudo chown -c :voice unit1exercise4/zertrauung
sudo chown -c :fax unit1exercise4/aufgehalttete
sudo chown -c :cdrom unit1exercise4/angesinner
sudo chown -c :floppy unit1exercise4/angewarfen
sudo chown -c :fax unit1exercise4/engehte

sudo chown -c :audio unit1exercise4/engehte/aufgekaess
sudo chown -g+s -c :proxy unit1exercise4/angewarfen/aufkaestete
sudo chown -c :proxy unit1exercise4/engehte/aufrabarbs
sudo chown -c :cdrom unit1exercise4/angewarfen/ausgepflumung
sudo chown -c :mail unit1exercise4/zertrauung/verschmeckst

sudo chown -c :audio unit1exercise4/angewarfen/ausgepflumung/aufgehaltung
sudo chown -c :floppy unit1exercise4/angewarfen/aufkaestete/angewitzse
sudo chown -c :proxy unit1exercise4/angewarfen/ausgepflumung/gefahrkeit
sudo chown -c :student unit1exercise4/engehte/aufgekaess/angekaestest
sudo chown -c :audio unit1exercise4/engehte/aufrabarbs/befahrse
sudo chown -c :dip unit1exercise4/engehte/aufrabarbs/ankatzese
sudo chown -c :mail unit1exercise4/engehte/aufrabarbs/angehundse



sudo tar -cvzf unit1-solution4.tgz unit1exercise4

