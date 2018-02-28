class UserController < ApplicationController
  def signup
  end

  def show
    @user=User.where(user_name: params[:id]).first
  end

  def new
    @user=User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save

    else
      flash[:notice] = "Invalid username/password combination."
      redirect_to(:action => "new")
    end
  end
private
  def user_params
    params.require(:user).permit(:user_name,:fname,:lname,:email,:password,:password_confirmation)
  end


end
