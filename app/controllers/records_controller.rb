class RecordsController < ApplicationController
  def index
    if current_user.authority == "admin"
      @records = Record.all
    elsif current_user.authority == "editor"
      @records = Record.includes(:user).where(users:{authority:"user"}).order("entered_at desc")
    else
      redirect_to root_path
    end
  end

  def update
    record = Record.find(params[:id])
    record.update(record_params)
    redirect_to records_path
  end

  private
  def record_params
    params.require(:record).permit(:entered_at, :exited_at)
  end
end