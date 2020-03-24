# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Image.destroy_all

User.create(username: "alison", password: "123")

Image.create(title: "sunflower", component: "Sunflower", svg_url: "/images/sunflower.svg", national_park: "")
Image.create(title: "rose", component: "Rose", svg_url: "/images/rose.svg", national_park: "")
Image.create(title: "flower", component: "Flower", svg_url: "/images/simple_flower.svg", national_park: "")
Image.create(title: "Grand Canyon", component: "Grand Canyon", svg_url: "/images/grand-canyon.svg", national_park: "Grand Canyon")
Image.create(title: "Sequoia", component: "Sequoia", svg_url: "/images/sequoia.svg", national_park: "Sequoia")
Image.create(title: "Yosemite", component: "Yosemite", svg_url: "/images/yosemite.svg", national_park: "Yosemite")
