class UserController < ApplicationController
  def signup
  end

  def show
    @user=User.where(user_name: params[:id]).first
    @user_arr=@user.inspect
  end

  def new
    @user=User.new
  end



  def about
  end
  def edit
    @user=User.find_by_user_name(params[:id])
  end

  def update
    @user=User.find_by_user_name(params[:id])
    if @user.update_attributes user_params
      redirect_to user_path
    else
      redirect_to root_path
    end
  end

  def help
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.user_name)
    else
      flash[:danger] = "Invalid username/password combination."
      redirect_to(:action => "new")
    end
  end

  def profile
    @user=User.where(user_name: params[:id]).first
  end


private
  def user_params
    params.require(:user).permit(:user_name,:fname,:lname,:email,:password,:password_confirmation,:mname,:passport,:aadhaar,:dob,:flag)
  end

end
