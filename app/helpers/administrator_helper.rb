module AdministratorHelper

  def a_log_in(user)
    session[:user_id]=user.user_id
  end

  def current_admin
    @current_admin ||= Gadmin.find_by_user_id(session[:user_id])
  end

  def admin_log_out
    session.delete(:user_id)
    @current_admin=nil
  end


end
