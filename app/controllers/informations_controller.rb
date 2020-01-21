class InformationsController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @records = Record.where(user_id: current_user.id).order("entered_at desc").limit(5)
    @record = Record.where(exited_at: nil).find_by(user_id: @user.id)
  end

  def update
    user = User.find(params[:id])
    user.update!(user_params)
    redirect_to informations_path
  end
  private
  def user_params
    params.require(:user).permit(:name, :email,:authority,:idm,:slack_account)
  end
end
