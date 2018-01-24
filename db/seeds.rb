# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Deck.destroy_all
Section.destroy_all

a = Deck.create(title: 'first deck')
b = Deck.create(title: '2nd deck')
c = Deck.create(title: '3rd deck')
d = Deck.create(title: '4th deck')
e = Deck.create(title: '5th deck')
f = Deck.create(title: '6th deck')

15.times do |i|
	Section.create(title: 'test' + i.to_s, deck_id: a.id, time: 17)
end

15.times do |i|
	Section.create(title: 'test' + i.to_s, deck_id: c.id, time: 17)
end

15.times do |i|
	Section.create(title: 'test' + i.to_s, deck_id: b.id, time: 17)
end