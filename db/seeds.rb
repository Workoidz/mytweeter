# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all

User.create! [
				{name: "Ritesh Kapoor",email: "ritesh@workoidz.com"},
				{name: "Deepak Sharma",email: "deepak@9techies.com"},
				{name: "Ravi Sharma",email: "ravi@9techies.com"}

]

Tweet.create! [
				{tweet: "Wow.. !", user_id: User.first.id},
				{tweet: "Wow, Amazing.. !", user_id: User.first.id},
				{tweet: "Wow.. lets do  !", user_id: User.last.id},
				{tweet: "Wow.. !", user_id: User.last.id},
				{tweet: "Wow.. !", user_id: User.last.id}
				
]

FollowingUser.create! [
							{following_user_id: User.first.id, user_id: User.second.id},
							{following_user_id: User.last.id, user_id: User.second.id},
							{following_user_id: User.first.id, user_id: User.last.id}

]

FollowerUser.create! [
							{follower_user_id: User.first.id, user_id: User.second.id},
							{follower_user_id: User.last.id, user_id: User.second.id},
							{follower_user_id: User.first.id, user_id: User.last.id}

]