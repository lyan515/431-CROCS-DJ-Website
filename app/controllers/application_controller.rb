class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :user_current, :user_valid

  if Rails.env.test?
    prepend_before_filter :stub_current_user
    def stub_current_user
      session[:user_id] = cookies[:stub_user_id] if cookies[:stub_user_id]
    end
  end

  def user_current
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def user_valid
    if @current_user.uid == "113054678615933156222"
      @current_user
    end
    
  end
  
end
