Record Store Continued
So far our record store application isn't very useful. Once full CRUD functionality for Albums has been added, include additional properties beside name such as year, genre, artist and so on. Once this is complete, consider the following challenges:

Search for an Album by name. You will need an Album.search() method to do this. Write a test for Album.search() before you try to implement the rest of the functionality. Bonus points: use a regular expression for your search implementation.
Sort Albums by name. You will need an Album.sort() method.
Add a sold() instance method to an Album. This will move the Album instance to a @@sold_albums class variable. Implement the backend functionality first (along with testing). Once that's complete, add functionality to Sinatra to "buy" an Album and view both available and sold Albums.
