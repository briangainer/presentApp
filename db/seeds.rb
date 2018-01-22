# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Deck.create(title: 'first deck')
Deck.create(title: '2nd deck')
Deck.create(title: '3rd deck')
Deck.create(title: '4th deck')
Deck.create(title: '5th deck')
Deck.create(title: '6th deck')

15.times do |i|
	Section.create(title: i.to_s, deck_id: 1)
end

15.times do |i|
	Section.create(title: i.to_s, deck_id: 2)
end

15.times do |i|
	Section.create(title: i.to_s, deck_id: 4)
end