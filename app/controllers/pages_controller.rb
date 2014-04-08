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
  
  
  
end