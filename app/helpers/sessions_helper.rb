module SessionsHelper

def log_in(user)
  session[:user_name]=user.user_name
end

end
