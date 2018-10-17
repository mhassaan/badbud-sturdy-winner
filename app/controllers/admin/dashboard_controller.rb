class Admin::DashboardController < ApplicationController
  layout 'admin/application'
  before_action :authenticate_admin, except: [:index, :create]
  
  def index
    redirect_to admin_landing_path if helpers.user_is_admin?
    @user = User.new
  end
  
  def create
    user = User.find_by_email(login_params[:email])
    if (user.present? && user.authenticate(login_params[:password]))
      helpers.login(user)
      path = admin_landing_path
      flash[:success] = "Welcome to Admin Panel."
    else
      path = admin_root_path
      flash[:error] = "Invalid user."
    end
    redirect_to path
  end
  
  def landing 
  end
  
  protected 

  def login_params
    params.require(:user).permit(:email,:password)
  end

end
