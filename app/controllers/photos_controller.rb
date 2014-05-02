class PhotosController < ApplicationController
  # gives access to these actions only to authorized users
  before_filter :authorize, :only => [:new, :create, :update, :destroy]

  # list all thumbnails of photos
  def index
    redirect_to :root
    
    @photos = Photo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @photos }
    end
  end

  # show photo
  def show
    @comment = Comment.new
    
    @photo = Photo.find(params[:id])
    @photographer = Photographer.find(@photo.photographer_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @photo }
    end
  end
  
  #  new photo
  def new
    @photo = Photo.new
    @galleries = Gallery.where(:photographer_id => current_photographer)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @photo }
    end
  end
  
  # create new photos
  def create
    @photo = Photo.new(params[:photo])
    @photographer = Photographer.find(current_photographer.id)

    respond_to do |format|
      if @photo.save
        @photo.update_attributes(:photographer_id => @photographer.id)
        @photographer.update_attributes(:photo_id => @photo.id)
        format.html { redirect_to @photo, notice: 'Photo was successfully uploaded!' }
        format.json { render json: @photo, status: :created, location: @photo }
      else
        format.html { render action: "new" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # update photos
  def update
    @photo = Photo.find(params[:id])

    respond_to do |format|
      if @photo.update_attributes(params[:photo])
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # delete photos
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do |format|
      format.html { redirect_to photographer_path(current_photographer.id) }
      format.json { head :no_content }
    end
  end
end
