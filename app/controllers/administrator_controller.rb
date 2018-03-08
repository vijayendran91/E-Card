class AdministratorController < ApplicationController

  def admin_log_in(user)
    session[:user_id]=user.user_id
  end
  def create
    if params[:administrator][:user_id]
      user = Gadmin.find_by_user_id(params[:administrator][:user_id])
      if user && user.authenticate(params[:administrator][:password])
        admin_log_in user
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
    @user=User.all
  end

  private
  def admin_params
    params.require(:administrator).permit(:user_id,:password)
  end
end
