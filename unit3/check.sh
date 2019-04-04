sudo /bin/bash unit3/routes0add.sh
route | cut -c1-48 > unit3/routetable0add.log
sudo /bin/bash unit3/routes0del.sh
route | cut -c1-48 > unit3/routetable0del.log
sudo /bin/bash unit3/routes1add.sh
route | cut -c1-48 > unit3/routetable1add.log
sudo /bin/bash unit3/routes1del.sh
route | cut -c1-48 > unit3/routetable1del.log
sudo /bin/bash unit3/routes2add.sh
route | cut -c1-48 > unit3/routetable2add.log
sudo /bin/bash unit3/routes2del.sh
route | cut -c1-48 > unit3/routetable2del.log
sudo /bin/bash unit3/routes3add.sh
route | cut -c1-48 > unit3/routetable3add.log
sudo /bin/bash unit3/routes3del.sh
route | cut -c1-48 > unit3/routetable3del.log
sudo /bin/bash unit3/routes4add.sh
route | cut -c1-48 > unit3/routetable4add.log
sudo /bin/bash unit3/routes4del.sh
route | cut -c1-48 > unit3/routetable4del.log
unit3/check HASH:unit3/answers.txt:unit3/check.txt SORT:unit3/iface0-solution.txt:unit3/iface0-sorted.txt:unit3/iface0-hash.txt SORT:unit3/iface1-solution.txt:unit3/iface1-sorted.txt:unit3/iface1-hash.txt SORT:unit3/iface2-solution.txt:unit3/iface2-sorted.txt:unit3/iface2-hash.txt SORT:unit3/iface3-solution.txt:unit3/iface3-sorted.txt:unit3/iface3-hash.txt SORT:unit3/iface4-solution.txt:unit3/iface4-sorted.txt:unit3/iface4-hash.txt MATCH:+unit3/routes0.txt:unit3/routetable0add.log MATCH:-unit3/routes0.txt:unit3/routetable0del.log MATCH:+unit3/routes1.txt:unit3/routetable1add.log MATCH:-unit3/routes1.txt:unit3/routetable1del.log MATCH:+unit3/routes2.txt:unit3/routetable2add.log MATCH:-unit3/routes2.txt:unit3/routetable2del.log MATCH:+unit3/routes3.txt:unit3/routetable3add.log MATCH:-unit3/routes3.txt:unit3/routetable3del.log MATCH:+unit3/routes4.txt:unit3/routetable4add.log MATCH:-unit3/routes4.txt:unit3/routetable4del.log
