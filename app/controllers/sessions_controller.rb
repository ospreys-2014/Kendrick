class SessionsController < ApplicationController

  def destroy
    if session[:user_id]
      session[:user_id] = nil
      redirect_to(root_path)
    end
  end

  def new
  end

  def create
    user = User.where(username: params[:login][:username]).first

    if user && user.authenticate(params[:login][:password])
      session[:user_id] = user.id
      flash[:notice] = "Signed in successfully."
      redirect_to root_url
    else
      flash[:error] = "Sorry."
      render :login
    end
  end
end
