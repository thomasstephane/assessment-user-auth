helpers do

  def current_user
    @current_user = User.find(session[:id]) if session[:id]
  end

  def print_users
    @users = User.all
    @logged_in_user = User.find(session[:id])
  end

end
