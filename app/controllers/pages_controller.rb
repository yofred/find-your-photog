class PagesController < ApplicationController

  def index
    
    client = F00px::Client.new
    client.consumer_key = ENV["500PX_CONSUMER_KEY"]
    client.consumer_secret = ENV["500PX_CONSUMER_SECRET"]
    
    @catpic = "http://placekitten.com/250/250"
    @largecatpic = "http://placekitten.com/500/500"
    # @photo = client.get('photos')
    
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
      redirect_to :photographer
    end
  end
  
  def logout
    session[:user_id] = nil
    session[:photographer_id] = nil
    redirect_to :root
  end
  
end