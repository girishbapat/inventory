# inventory Project

Inventory management system using ROR

Steps for installation
1. Get inventory repository on your machine
1.1 Clone https://github.com/girishbapat/inventory repository
1.2 git pull
You may need to do git branch --set-upstream-to=origin/master

2. Database installation
Currently we are using postgresql database for building project
2.1 install postgres from http://postgresql.en.uptodown.com 
Install it on default port 5432
Use postgres/postgres as username password while installation.
2.2 Once installed, use Pg Admin III client to connect to postgresql server instance 
2.3 create database inventory_development

3. Update your gem bundles by executing following
bundle install

4. To update your schema execute following command
rake db:migrate
