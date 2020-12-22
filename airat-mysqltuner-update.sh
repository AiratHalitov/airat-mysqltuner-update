#!/bin/bash

# Author: Airat Halitov
# GitHub: https://github.com/AiratHalitov/airat-mysqltuner-update
# License: GPLv3

rm -rf basic_passwords.txt vulnerabilities.csv mysqltuner.pl

wget -q https://raw.githubusercontent.com/major/MySQLTuner-perl/master/basic_passwords.txt -O basic_passwords.txt
wget -q https://raw.githubusercontent.com/major/MySQLTuner-perl/master/vulnerabilities.csv -O vulnerabilities.csv
wget -q http://mysqltuner.pl/ -O mysqltuner.pl

if [[ -f  mysqltuner.pl && -f basic_passwords.txt && -f vulnerabilities.csv ]]; then
    chmod +x mysqltuner.pl
    sudo mv mysqltuner.pl /usr/local/bin/mysqltuner
    sudo mv basic_passwords.txt /usr/local/bin/basic_passwords.txt
    sudo mv vulnerabilities.csv /usr/local/bin/vulnerabilities.csv
    echo "Done!"
fi
