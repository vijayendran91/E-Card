module SessionsHelper

def log_in(user)
  session[:user_name]=user.user_name
end

def current_user
    @current_user ||= User.find_by(user_name: session[:user_name])
end

def logged_in?
  !@current_user.nil?
end

def set_current_user(user)
  @current_user = user
end

def log_out
  session.delete(:user_name)
  @current_user=nil
end

def logged_in_user
  unless logged_in?
    flash[:danger] = "Please log in."
      redirect_to login_url
    end
end

end
