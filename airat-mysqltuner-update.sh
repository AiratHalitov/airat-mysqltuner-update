#!/bin/bash

rm -rf basic_passwords.txt vulnerabilities.csv mysqltuner.pl

wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/basic_passwords.txt -O basic_passwords.txt
wget https://raw.githubusercontent.com/major/MySQLTuner-perl/master/vulnerabilities.csv -O vulnerabilities.csv
wget http://mysqltuner.pl/ -O mysqltuner.pl

if [[ -f  mysqltuner.pl && -f basic_passwords.txt && -f vulnerabilities.csv ]]; then
    chmod +x mysqltuner.pl
    mv mysqltuner.pl /usr/local/bin/mysqltuner
    mv basic_passwords.txt /usr/local/bin/basic_passwords.txt
    mv vulnerabilities.csv /usr/local/bin/vulnerabilities.csv
    echo "Done!"
fi
