require 'pry'

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)

    if @user.save
      # if @user.artist
      @user.assign_genre(params[:user][:genres])
      # end
      session[:user_id] = @user.id
      flash[:notice] = "You have signed up successfully."
      redirect_to genres_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :bio, :soundcloud_profile, :email_address, :password, :password_confirmation, :artist)
  end

end
