class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new()
  end

  def create
    @user = User.new(params[:user])

    if @user.save
      flash[:notice] = "You have signed up successfully."
      redirect_to genres_path
    else
      render :new
    end
  end

end
