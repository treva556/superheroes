# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "initiated seed"
# Create some powers
flight= Power.create(name: "Flight", description: "Can Fly very high even when lifting objects")
good_combat = Power.create(name: "Good Combat", description: "Very Good Fighting Skills")
energy_blasts = Power.create(name: "Energy Blasts", description: "The ability to generate and emit powerful energy blasts.")
telekinesis = Power.create(name: "Telekinesis", description: "The power to move objects with the mind.")
shapeshifter = Power.create(name: "Shape Shifter", description: "Can change to someone else for caumoflage")


# Create some heroes
superman = Hero.create(name: "Super Man", super_name: "Man of Steel")
batman = Hero.create(name: "Bat Man", super_name: "I am Justice")
beast_boy = Hero.create(name: "Beast Boy", super_name: "Teen Titan")
homelander = Hero.create(name: "Homelander", super_name: "The Peoples Hero")
black_panther = Hero.create(name: "Black Panther", super_name: "Wakanda Forever")



8.times do
    HeroPower.create(
       strength: ['Weak', 'Average','Strong'].sample,
       hero_id: rand(1..5),
       power_id: rand(1..5)
    )
end

puts "seeding done"