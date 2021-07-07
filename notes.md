In my own words... we are essentially setting up or practicing coding ActiveRecord associations through the use of macros


1)
To start off we created our table classes in db/migrate which are children of ActiveRecord::Migration to get macro methods for associations 
after understanding the relationships and setting up our tables we can migrate 'rake db:migrate' in terminal to create the tables we set up

2)
after doing this we now set up the macros in our app/model classes...
By doing this we first created our app/model files which will all be children of ActiveRecord::Base to get the macro methods

3)
After writing our macros we're done! It is set for test data

4)
To see what was happening with test cases we ran the following code

hello = Song.new(name: "Hello")
adele = Artist.new(name: "Adele")

hello.artist = adele
hello.artist.name #=> "Adele"

adele.songs #=> [] empty array... we still need to apply the reverse/other side of relationship... we only coded song to artist

adele.songs.push(hello)
adele.save #=> this allows for the instance to be saved into the table, since ruby deletes it after closing program.