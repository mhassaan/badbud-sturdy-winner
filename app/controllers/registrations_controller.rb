class RegistrationsController < ApplicationController
  def index
  end
  def create
    user = User.new(register_params)
    if user.save
      flash[:success] = "#{user.first_name.capitalize}"
    else
      flash[:error] = user.errors.full_messages.join('<br/>')
    end
    redirect_to root_path
  end

  protected
  def register_params
    params.require(:user).permit(:first_name,:last_name,:email,:password,:password_confirmation)
  end
end
