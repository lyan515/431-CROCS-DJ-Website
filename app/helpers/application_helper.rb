module ApplicationHelper
  def user_current
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  def user_valid
    if @current_user.uid == "113054678615933156222"
      @current_user
    end
    
  end
  
  def get_admin_token
    @current_user.oauth_token
  end
  
end