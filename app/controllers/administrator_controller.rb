class AdministratorController < ApplicationController

  include AdministratorHelper

  def create
    if params[:administrator][:user_id]
      user = Gadmin.find_by_user_id(params[:administrator][:user_id])
      if user && user.authenticate(params[:administrator][:password])
        a_log_in user
        redirect_to administrator_index_path
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render administrator_admin_log_in_path
      end
    else
      flash.now[:danger] = 'Invalid username/password'
      redirect_to root_path
    end
  end

  def index
    @user=User.where(flag: 1)
    @current_admin=current_admin

  end

  def delete
    admin_log_out
    render administrator_path
  end

  private
  def admin_params
    params.require(:administrator).permit(:user_id,:password)
  end
end
