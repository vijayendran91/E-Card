 class SessionsController < ApplicationController

  def create
    if params[:session][:user_name]
      user = User.find_by(user_name: params[:session][:user_name])
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to user_path(params[:session][:user_name])
      else
        flash.now[:danger] = 'Invalid email/password combination'
        render 'new'
      end
    else
      flash.now[:danger] = 'User not found. Please SignUp'
      redirect_to new_user_path
    end
  end

  def admin_log_in(user)

  end


  def destroy
    log_out
    redirect_to root_url
  end

end
