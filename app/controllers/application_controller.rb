class ApplicationController < ActionController::Base
  def authenticate_admin
    if helpers.user_logged_in?
      unless helpers.user_is_admin?
        flash[:error] ="Are you sure that you got Admin rights?"
        redirect_to admin_root_path
      end
    else
      flash[:error] ="Pease login to continue."
      redirect_to admin_root_path
    end
  end

  def current_cart
    if session[:cart_id].present?
      Cart.find session[:cart_id]
    else
      Cart.new
    end
  end
end
