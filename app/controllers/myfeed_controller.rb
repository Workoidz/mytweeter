class MyfeedController < ApplicationController
  def show

  	user = User.find_by(id: session[:user_id])

  	fu = user.follower_users

  	i=0;
  	@tweets = Array.new

  	fu.each do | f |

  	   	@tweets[i] = User.find_by(id: f.follower_user_id).tweets #Tweet.all

  	   	i = i+1
    end

  end
end
