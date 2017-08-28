# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Favorite.delete_all()
User.delete_all()
Show.delete_all()

s1 = Show.create({title: "Seinfeld", series: 1, description: "Comedy show about nothing", image: "seinfeld.jpg", programmeID: "sfdl0101" })
s2 = Show.create({title: "Sopranos", series: 2, description: "Crime / Drama Series about Mafia", image: "sopranos.jpg", programmeID: "sprn0201" })

u1 = User.create({name: "Jack", age: 30})
u2 = User.create({name: "Paul", age: 35})

Favorite.create({imdb_ranking: 6, user: u1, show: s2})
Favorite.create({imdb_ranking: 9, user: u2, show: s1})
Favorite.create({imdb_ranking: 9, user: u1, show: s1})