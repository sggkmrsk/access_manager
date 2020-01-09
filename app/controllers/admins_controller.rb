class AdminsController < ApplicationController
  def index
  end

  def new
    @admin = Admin.new
  end

  def create

  end
  
  def update
    def user_params
      params.require(:user).permit(:name, :email)
    end
  end

end
