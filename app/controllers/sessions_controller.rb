class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by!(user_name: params[:session][:user_name])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user_path(params[:session][:user_name])
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
