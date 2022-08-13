module SessionsHelper
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def loged_in?
    !current_user.nil?
  end
end
