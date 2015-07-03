# inventory Project

Inventory management system using ROR

<h2> Steps for installation </h2><br>
<h3>1. Get inventory repository on your machine</h3> <br>
1.1 Clone https://github.com/girishbapat/inventory repository <br>
1.2 git pull <br>
You may need to do git branch --set-upstream-to=origin/master <br> <br>

<h3> 2. Database installation </h3> <br>
Currently we are using postgresql database for building project <br>
2.1 install postgres from http://postgresql.en.uptodown.com  <br>
Install it on default port 5432 <br>
Use postgres/postgres as username password while installation. <br>
2.2 Once installed, use Pg Admin III client to connect to postgresql server instance  <br>
2.3 create database inventory_development <br> <br>

<h3> 3. Update your gem bundles by executing following</h3> <br>
bundle install <br> <br>

<h3>4. To update your schema execute following command </h3><br>
rake db:migrate <br>
