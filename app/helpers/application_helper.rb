module ApplicationHelper
  def login_or_logout_content
    content_for :login_or_logout do 
      if user_logged_in?
        return \
					"<li><a data-method='DELETE' href='#{logout_user_path}' data-turbolinks='false'>Logout</a></li>"
      else
        return \
					"<li><a href='#{login_path}' data-turbolinks='false'>Login</a></li>"
			end
    end
  end
end
