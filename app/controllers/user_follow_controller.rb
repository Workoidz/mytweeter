class UserFollowController < ApplicationController
  def change_status

  	p "hi"
	p params[:user_id]	  


		following_id = params[:user_id].to_i
		follower_id = session[:user_id]

			p "follower id : " + follower_id.to_s
			p " following id : " + following_id.to_s

	if User.find_by(id: session[:user_id]).follower_users.find_by(follower_user_id: following_id) then
		fu = User.find_by(id: session[:user_id]).follower_users.find_by(follower_user_id: following_id)
		fu.delete
		
		ft = User.find_by(id: following_id).following_users.find_by(following_user_id: follower_id)
		ft.delete
	else

		FollowerUser.create! follower_user_id: following_id, user_id: follower_id
		FollowingUser.create! following_user_id: follower_id, user_id: following_id

	end


  	redirect_to users_path
  end
end
