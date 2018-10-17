class SessionsController < ApplicationController
  def index
    @login_user = User.new
    @register_user = User.new
  end
  def create
    user = User.find_by_email(login_params[:email])
    if user.present?
      if user.authenticate(login_params[:password])
        helpers.login(user)
        flash[:success] = "#{user.first_name.capitalize}"
      else
        flash[:error] = user.errors.full_messages.join('<br/>')
      end
    else
      flash[:error] = "Invalid user."
    end
    redirect_to root_path
  end

  def destroy 
    helpers.logout
    redirect_to root_path
  end
  protected 
  def login_params
    params.require(:user).permit(:email,:password)
  end
end
