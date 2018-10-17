module SessionsHelper
  def logout
    session.delete(:user_id)
  end

  def login(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def user_logged_in?
    (current_user.present?)? true : false
  end  

  def user_is_admin?
    if current_user.present?
      (current_user.is_admin)? true : false
    end
  end

end
