class UsersController < ApplicationController
  def index
    if current_user.authority == "admin"
      @users = User.all
    elsif current_user.authority == "editor"
      @users = User.where(users:{authority:"user"})
    else
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    redirect_to users_path
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:name, :email,:authority)
  end
end