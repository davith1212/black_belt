class SessionsController < ApplicationController
  def index
  end

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/users/#{session[:user_id]}"
    else
      flash[:errors] = ["Invalid combination"]
      redirect_to :back
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    session.clear
    redirect_to :root
  end

  private
end
