class FollowerUsersController < ApplicationController
  before_action :set_follower_user, only: [:show, :edit, :update, :destroy]

  # GET /follower_users
  # GET /follower_users.json
  def index
    @follower_users = User.find_by(id: session[:user_id]).follower_users #FollowerUser.all
  end

  # GET /follower_users/1
  # GET /follower_users/1.json
  def show
  end

  # GET /follower_users/new
  def new
    @follower_user = FollowerUser.new
  end

  # GET /follower_users/1/edit
  def edit
  end

  # POST /follower_users
  # POST /follower_users.json
  def create
    @follower_user = FollowerUser.new(follower_user_params)

    respond_to do |format|
      if @follower_user.save
        format.html { redirect_to @follower_user, notice: 'Follower user was successfully created.' }
        format.json { render :show, status: :created, location: @follower_user }
      else
        format.html { render :new }
        format.json { render json: @follower_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /follower_users/1
  # PATCH/PUT /follower_users/1.json
  def update
    respond_to do |format|
      if @follower_user.update(follower_user_params)
        format.html { redirect_to @follower_user, notice: 'Follower user was successfully updated.' }
        format.json { render :show, status: :ok, location: @follower_user }
      else
        format.html { render :edit }
        format.json { render json: @follower_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follower_users/1
  # DELETE /follower_users/1.json
  def destroy
    @follower_user.destroy
    respond_to do |format|
      format.html { redirect_to follower_users_url, notice: 'Follower user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_follower_user
      @follower_user = FollowerUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def follower_user_params
      params.require(:follower_user).permit(:follower_user_id, :user_id)
    end
end
