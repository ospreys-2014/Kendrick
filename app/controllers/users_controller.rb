require 'pry'

class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @rating = Rating.new
    @average_rating = Rating.average_rating_for(@user)
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(user_params)

    if @user.save
      @user.assign_genre(params[:user][:genres])
      session[:user_id] = @user.id
      flash[:notice] = "You have signed up successfully."
      redirect_to genres_path
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :bio, :soundcloud_profile, :email_address, :password, :password_confirmation, :artist, :genres, :avatar)
  end

end
