Photo.destroy_all
Profile.destroy_all
Category.destroy_all
Event.destroy_all
User.destroy_all


# Categories
category_1 = Category.create(name: "Birthday Party")
category_2 = Category.create(name: "Meeting")
category_3 = Category.create(name: "Conference")
category_4 = Category.create(name: "Music Concert")

# Users
user_1 = User.create(email: "waqas@codaisseurup.com", password: "abcd1234")
user_2 = User.create(email: "boris@codaisseurup.com", password: "abcd1234")

# Events
event_1 = Event.create(
name:"Birthday Party",
description: "Birthday Party at Codaisseur",
location: "Codaisseur",
price: 9.5,
capacity: 30,
includes_food: true,
includes_drinks: true,
starts_at: Time.now,
ends_at: Time.now,
active: true,
user: user_1,
categories: [category_1])

event_2 = Event.create(
name:"Meeting",
description: "Meeting at Codaisseur",
location: "Codaisseur",
price: 20,
capacity: 15,
includes_food: true,
includes_drinks: true,
starts_at: Time.now,
ends_at: Time.now,
active: true,
user: user_2,
categories: [category_2])

# Photos
photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499347008/birthday-3_s2bjli.jpg", event: event_1)
photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499347001/birthday-2_sudkgj.jpg", event: event_1)
photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499346987/birthday-1_ylnpct.jpg", event: event_1)

photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499347026/meeting-3_tk4zme.jpg", event: event_2)
photo5 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499347021/meeting-2_yurhlk.png", event: event_2)
photo6 = Photo.create!(remote_image_url: "http://res.cloudinary.com/waqas/image/upload/v1499347015/meeting-1_suq1ra.jpg", event: event_2)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
