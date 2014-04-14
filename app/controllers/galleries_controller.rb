class GalleriesController < ApplicationController
  # gives access to these actions only to authorized users
  before_filter :authorize, :only => [:new, :edit, :create, :update]

  # list of all the galleries
  def index
    @galleries = Gallery.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @galleries }
    end
  end
  
  # dedicated page for each gallery
  def show
    @gallery = Gallery.find(params[:id])
    @photographer = Photographer.find(@gallery.photographer_id)
    @photos = Photo.where(:gallery_id => @gallery.id)
    
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gallery }
    end
  end
  
  # application for new gallery
  def new
    @gallery = Gallery.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gallery }
    end
  end

  # edit gallery details
  def edit
    @gallery = Gallery.find(params[:id])
  end

  # create new gallery and redirect to gallery#show
  def create
    @gallery = Gallery.new(params[:gallery])

    respond_to do |format|
      if @gallery.save
        @gallery.update_attributes(:photographer_id => current_photographer.id)
        format.html { redirect_to @gallery, notice: 'Gallery was successfully created.' }
        format.json { render json: @gallery, status: :created, location: @gallery }
      else
        format.html { render action: "new" }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # update new gallery after an edit and redirect to gallery#show
  def update
    @gallery = Gallery.find(params[:id])

    respond_to do |format|
      if @gallery.update_attributes(params[:gallery])
        format.html { redirect_to @gallery, notice: 'Gallery was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gallery.errors, status: :unprocessable_entity }
      end
    end
  end

  # delete a gallery
  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy

    respond_to do |format|
      format.html { redirect_to galleries_url }
      format.json { head :no_content }
    end
  end
end
