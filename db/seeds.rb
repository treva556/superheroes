# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Create some powers
super_strength = Power.create(name: "Super Strength", description: "The ability to lift and move objects beyond human capability.")
flight = Power.create(name: "Flight", description: "The power to propel oneself through the air.")
energy_blasts = Power.create(name: "Energy Blasts", description: "The ability to generate and emit powerful energy blasts.")
telekinesis = Power.create(name: "Telekinesis", description: "The power to move objects with the mind.")
invisibility = Power.create(name: "Invisibility", description: "The ability to become invisible to the naked eye.")


# Create some heroes
hulk = Hero.create(name: "Hulk", super_name: "The Incredible Hulk")
thor = Hero.create(name: "Thor", super_name: "The God of Thunder")
iron_man = Hero.create(name: "Iron Man", super_name: "The Armored Avenger")
captain_america = Hero.create(name: "Captain America", super_name: "The First Avenger")
black_widow = Hero.create(name: "Black Widow", super_name: "The Russian Spy")



8.times do
    HeroPower.create(
       strength: ['Weak', 'Average','Strong'].sample,
       hero_id: rand(1..5),
       power_id: rand(1..5)
    )
end