class LoginsController < ApplicationController

  # logs in a user
  def create
    user = User.find_by_email(params[:email])

    # establishes a session if password matches  
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      redirect_to :root
    end
  end
  
  # logs in a photographer
  def create_photographer
    user = User.find_by_email(params[:email])
    
    # establishes a session if password matches
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      redirect_to :root
    end
  end
  
  # destroys a session when logout action is called
  def logout
    session[:user_id] = nil
    redirect_to :root
  end
  
end