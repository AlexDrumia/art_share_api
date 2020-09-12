class UsersController < ApplicationController
  def index
    users = User.all 
    username_param = {username: params[:username]}

    if User.exists? username_param
      user = User.find_by username_param
      render json: user
    else
      render json: users
    end
  end

  def show
    user = User.find(params[:id])
    
    render json: user
  end

  def create
    user = User.new(user_params)
    
    if user.save
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end  
  end  

  def update
    user = User.find(params[:id])
    
    if user.update(user_params)
      render json: user
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy

    render json: user
    # redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
