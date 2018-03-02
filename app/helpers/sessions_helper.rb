module SessionsHelper

def log_in(user)
  session[:user_name]=user.user_name
end

def current_user
    @current_user ||= User.find_by(user_name: session[:user_name])
end

def log_out
  session.delete(:user_name)
  @current_user=nil
end


end
