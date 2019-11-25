# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Genre.destroy_all
Song.destroy_all

tekashi = Artist.create(name: "Takashi 69", bio: "Born in Harlem, NY")
nas = Artist.create(name: "Nas", bio: "Born in Queensbridge, NY")
elvis = Artist.create(name: "Elvis Presley", bio: "King of Rock and Roll")

hip_hop = Genre.create(name: "Hip-Hop")
rap = Genre.create(name: "Rap")
rock = Genre.create(name: 'Rock and Roll')

gummo = Song.create(name: "Gummo", artist_id: tekashi.id, genre_id: rap.id)
ny_state = Song.create(name: "NY State of Mind", artist_id: nas.id, genre_id: hip_hop.id)
burning_love = Song.create(name: "Burning", artist_id: elvis.id, genre_id: rock.id)

