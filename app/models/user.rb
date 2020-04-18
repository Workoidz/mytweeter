class User < ApplicationRecord

	has_secure_password

	has_many :tweets, dependent: :destroy
	has_many :following_users, dependent: :destroy
	has_many :follower_users, dependent: :destroy
end
