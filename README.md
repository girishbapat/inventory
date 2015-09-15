# Inventory test project

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
2.3 create database inventory_development <br>
<b> Note: If you already have postgres installed on your system and with different configurations,<br> 
you need to update inventory/config/database.yml accordingly </b>

<h3> 3. Update your gem bundles by executing following</h3> <br>
bundle install <br> <br>

<h3>4. To update your schema execute following command </h3><br>
rake db:migrate <br>

<h3>5. On windows install file utility.</h3> <br>
On windows, by default file utility is not present. For saving image file we need to have this.<br>
Download  <b>Complete package, except sources</b> from	 http://gnuwin32.sourceforge.net/packages/file.htm
<h3>6. Import project in ruby mine</h3><br>
Open Ruby mine <br>
File --> open ...--> point to project directory--> click Ok

<h3>7. You can start server if you wish to see by </h3> <br>
bin/rails server
