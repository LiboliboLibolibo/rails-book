class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: user_params[:name]).try(:authenticate, user_params[:password])
    if user
      render plain: sprintf("欢迎, %s", user.name)
    else
      flash.now[:login_error] = "用户名或密码有误"
      render "new"
    end
  end

  private
    def user_params
      params.require(:session).permit(:name, :password)
    end
end
