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

  def submit
    @user=User.find_by_user_name(params[:user_id])
    @user.flag=1
    if @user.save
      redirect_to user_path(@user)
    else
      redirect_to root_path
    end
  end

  def about
  end
  def edit
    @user=User.find_by_user_name(params[:id])
  end



  def edit
    @user=User.where(user_name: params[:id]).first
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

  def update
    @user=User.find_by_user_name(params[:id])

    if @user.update(user_params)
      redirect_to user_path
    else
      redirect_to root_path
    end


  end


  def profile
    @user=User.where(user_name: params[:id]).first
  end


private
  def user_params
    params.require(:user).permit(:user_name,:fname,:lname,:email,:password,:password_confirmation,:mname,:passport,:aadhaar,:dob,:flag)
  end



  def user_params_update
    params.require(:user).permit(:user_name,:fname,:lname,:email,:mname,:passport,:aadhaar)
  end

end
