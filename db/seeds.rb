# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.create! ([
		{
			user_id: 1, 
			photo_id: 1, 
			content: "Nice pic"
		},
		{
			user_id: 1, 
			photo_id: 1, 
			content: "Thats Awesome"
		},
		{
			user_id: 1, 
			photo_id: 1, 
			content: "Sick Bruh"
		}
])

p Comment.all