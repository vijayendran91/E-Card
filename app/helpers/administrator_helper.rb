module AdministratorHelper

  def a_log_in(user)
    session[:user_id]=user.user_id
  end



  def admin_log_out
    session.delete(:user_id)
    @current_user=nil
  end


end
