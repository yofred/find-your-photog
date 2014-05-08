class PagesController < ApplicationController

  # the root page where all photos are displayed through thumbnail
  def index

    @photos = Photo.cached_photos
    @f00_photos = JsonPath.new('$..image_url').on(F00px.get('photos').body)
    
    respond_to do |format|
      format.html
      format.json { render json: @index }
    end

    # expires_in 3.minutes, :public => true
  end
  

  def login
    @user = User.new
    @photographer = Photographer.new
  end
  
  # creates a new user then redirects to the home page
  def create
    # identifies user by provided email
    user = User.find_by_email(params[:email])

    # if the provided passord matches the user, session is established
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user, notice: 'You have successfully logged in!'
    else
      # if password doesnt match, session is not established
      redirect_to :root
    end
  end
  
  # creates a new photographer then redirects to the home page
  def create_photographer
    # identifies the photographer through provided email
    photographer = Photographer.find_by_email(params[:email])

    # if the provided password matches with the photographer, session is established
    if photographer && photographer.authenticate(params[:password])
      session[:photographer_id] = photographer.id
      redirect_to photographer, notice: 'You have successfully logged in!'
    else
      # if password doesnt match, session is not established
      redirect_to :root
    end
  end
  
  # logs out a user or photographer by destroying the session
  def logout
    session[:user_id] = nil
    session[:photographer_id] = nil
    redirect_to :root
  end
  
end