class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :valid_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def valid_user
    if @current_user.uid == "118251766435546532160" || @current_user.uid == "100182614235668421671" || @current_user.uid == "118156090178399458711"
      @current_user
    end
    
  end
  
end
