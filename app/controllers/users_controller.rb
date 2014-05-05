class UsersController < ApplicationController
  # gives access to these actions only to authorized users  
  before_filter :authorize, :only => [:edit, :update, :destroy]

  # lsits all the users
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  # shows a user
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # creates a new user
  def new
    @user = User.new

    respond_to do |format|
      # format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # create a new User object and establish a session
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        
        format.html { redirect_to @user, notice: 'User account was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # edit a user attribute
  def edit
    @user = User.find(params[:id])
  end

  # updates user attributes and redirects to user profile
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User account was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # deletes a user account
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end
end
