# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@genre1 = Genre.create(name: "Pop")
@genre2 = Genre.create(name: "Rock")
@genre3 = Genre.create(name: "Rap")
@genre4 = Genre.create(name: "Jazz")

@artist1 = Artist.create(name: "Madonna", bio: "She's a superstar!")
@artist2 = Artist.create(name: "Elvis", bio: "He's the King.")
@artist3 = Artist.create(name: "The Spice Girls", bio: "They don't belong on this list.")

@song1 = Song.create(name: "Singasong", artist: @artist1, genre: @genre1)
@song1 = Song.create(name: "Sadness Etc", artist: @artist1, genre: @genre2)
@song1 = Song.create(name: "Hip Happiness", artist: @artist2, genre: @genre2)
@song1 = Song.create(name: "NSFW Outfits", artist: @artist3, genre: @genre4)
