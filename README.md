Synopsis:

This project aims at ranking the players and pairing them up in matches in a tournament using swiss pairing algorithm.

Motivation:

Created for Udacity full stack developer course.

Create database "tournament":

vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql
psql (9.3.5)
Type "help" for help.

vagrant=> CREATE DATABASE tournament;
CREATE DATABASE
vagrant=> \q

Load SQL schema:

vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql tournament < tournament.sql

Step-By-Step Installation & Run:

Download Python 2.7 from https://www.python.org/downloads/ & install the same based on the OS you are using
Clone/copy the code directory from GitHub
Open installed Python IDLE GUI
Open tournament_test.py file from the cloned/copied application directory using Python IDLE and run the module using Run > Run Module.
Contributors

Udacity
Karunesh. S
