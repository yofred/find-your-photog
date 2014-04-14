class ApplicationController < ActionController::Base
  # All POST requests should have specific security token
  protect_from_forgery
  
  # Grants a user or photographer privileges when logged in
  #
  # current_user  - User that is currently logged in
  # current_photographer - Photographer that is currently logged in
  #
  # Redirects to login path if not logged in
  def authorize
    if current_user.nil? && current_photographer.nil?
      redirect_to :login
    end
  end
  
  # Establishes a session with a user
  def current_user
    if session[:user_id] 
      @current_user = User.find(session[:user_id])
    end
  end
  helper_method :current_user
        
  # Establishes a session with a photographer
  def current_photographer
    if session[:photographer_id]
      @current_photographer = Photographer.find(session[:photographer_id])
    end
  end
  helper_method :current_photographer
      
end