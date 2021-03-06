# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Team.destroy_all
User.destroy_all

3.times do 
  team = Team.create(
  	name: Faker::Team.name,
  	sport: Faker::Team.sport,
  	)
  5.times do
  	team.users.create(
  		name: Faker::Name.unique.name,
  		)
  end
end