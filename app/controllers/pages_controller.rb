class PagesController < ApplicationController

  def index
    string = F00px.get('photos')    
    path = JsonPath.new('$..image_url')
    
    @f00_photos = path.on(string.body)
    @photos = Photo.all
    @catpic = "http://placekitten.com/280/280"
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @index }
    end
  end
  
  def create
    user = User.find_by_email(params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else
      redirect_to :root
    end
  end
  
  def create_photographer
    photographer = Photographer.find_by_email(params[:email])
    # debugger
    if photographer && photographer.authenticate(params[:password])
      session[:photographer_id] = photographer.id
      redirect_to :root
    else
      redirect_to :root
    end
  end
  
  def logout
    session[:user_id] = nil
    session[:photographer_id] = nil
    redirect_to :root
  end
  
end