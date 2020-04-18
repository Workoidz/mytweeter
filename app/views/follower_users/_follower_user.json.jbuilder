json.extract! follower_user, :id, :follower_user_id, :user_id, :created_at, :updated_at
json.url follower_user_url(follower_user, format: :json)
