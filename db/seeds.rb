Category.destroy_all
User.destroy_all

birthday_party = Event.create(name: "Birthday Party")
meeting = Event.create(name: "Meeting")
conference = Event.create(name: "Conference")


waqas = User.create(email: "waqas@codaisseurup.com", password: "abcd1234")
boris = User.create(email: "boris@codaisseurup.com", password: "abcd1234")

event = Event.create(name:"Birthday Party", description: "Birthday Party at Codaisseur", location: "Codaisseur", price: 9.5, capacity: 30,
includes_food: true, includes_drinks: true, starts_at: Time.now, ends_at: Time.now, active: true, user: waqas, category: [birthday_party])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
