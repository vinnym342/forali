# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Organiser.create(name: 'London Fun',description: "Fun stuff to do in London that's unique and cannot be found anywhere else!",owner_id: 1)
Organiser.create(name: 'Stoner crew',description: "These events align with anybody who likes 420 and blazin", owner_id: 1)
Organiser.create(name: 'Skaters',description: "We love skating around and generally being sick",owner_id: 1)

