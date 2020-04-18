# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

User.create! [
				{name: "Ritesh Kapoor",email: "ritesh@workoidz.com",password: "123"},
				{name: "Deepak Sharma",email: "deepak@9techies.com", password: "123"},
				{name: "Ravi Sharma",email: "ravi@9techies.com", password: "123"}

]

Tweet.create! [
				{tweet: "Wow.. !", user_id: User.first.id},
				{tweet: "Wow, Amazing.. !", user_id: User.first.id},
				{tweet: "Wow.. lets do  !", user_id: User.last.id},
				{tweet: "Wow.. !", user_id: User.last.id},
				{tweet: "Wow.. !", user_id: User.second.id}
				
]

