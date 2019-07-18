# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.create(name: "Diverse", points: 0)
Challenger.create(name: "Alex Mosser", points: 0, team_id: 1, staff: false)
Challenger.create(name: "Alexi Salazar", points: 0, team_id: 1, staff: false)
Challenger.create(name: "Chad Shearer", points: 0, team_id: 1, staff: false)
Challenger.create(name: "Isaac Otero", points: 0, team_id: 1, staff: false)
Challenger.create(name: "Josh Wong", points: 0, team_id: 1, staff: false)

Team.create(name: "Delta", points: 0)
Challenger.create(name: "Karina Hou", points: 365, team_id: 2, staff: false)
Challenger.create(name: "Kristin Takasugi", points: 405, team_id: 2, staff: false)
Challenger.create(name: "Elizabeth Chang", points: 500, team_id: 2, staff: false)
Challenger.create(name: "Esther Han", points: 360, team_id: 2, staff: false)
Challenger.create(name: "Yuwei Cao", points: 35, team_id: 2, staff: false)