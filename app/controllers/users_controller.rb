class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    user = User.new(name: params[:user][:name],
                    username: params[:user][:username],
                    password: params[:user][:password])
    if user.save
      redirect_to users_show_path(user.id)
    else
      redirect_to users_new_path
    end
  end

  def log_in
    @user = User.new
  end

  def create_session
    user = User.where(username: params[:user][:username], password: params[:user][:password])
    if user.count > 0
      redirect_to users_show_path(user[0].id)
    else
      redirect_to log_in_path
    end
  end
end
