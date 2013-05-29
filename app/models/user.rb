class User < ActiveRecord::Base
  include BCrypt

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def log_in_user(params)
    @user = User.find_by_email(params[:email])
    if @user.password = params[:password]
      session[:id] = @user.id
      redirect '/'
    else
      redirect'/sessions/new'
    end
  end
end
