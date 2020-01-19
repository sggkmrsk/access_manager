class InformationsController < ApplicationController
  def index
    @user = User.find(current_user.id)
    @records = Record.where(user_id: current_user.id).order("entered_at desc").limit(5)
    @record = Record.where(exited_at: nil).find_by(user_id: @user.id)
  end
end
