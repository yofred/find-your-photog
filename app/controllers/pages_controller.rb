class PagesController < ApplicationController

  # the root page where all photos are displayed through thumbnail
  def index
    
    # gets a JSON object through the 500px API
    string = F00px.get('photos')    
    # gem JsonPath creates a path to the image_url hash of the JSON
    path = JsonPath.new('$..image_url')
    # parses the JSON
    new_path = JsonPath.new('$.photo')
    # creates global variable of the parsed JSON where we store the image_url of 500px images
    @f00_photos = path.on(string.body)
    # creates global variable of every Photo object
    @photos = Photo.all
    
    respond_to do |format|
      format.html
      format.json { render json: @index }
    end
  end
  
  # creates a new user then redirects to the home page
  def create
    # identifies user by provided email
    user = User.find_by_email(params[:email])

    # if the provided passord matches the user, session is established
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
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
      redirect_to :root
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