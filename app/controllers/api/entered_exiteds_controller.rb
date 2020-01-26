class Api::EnteredExitedsController < ApplicationController
  before_action :set_record,only: :update

  def index
    if @record
      return @record
    else
      @record = Record.includes(:user).new
      return @record
    end
  end

  def create
    user = User.find_by(idm: params[:idm])
    t = Time.now
    @record = Record.new(entered_at: t,user_id: user.id)
    @record.save
  end

  def update
    t = Time.now
    @record.exited_at = t
    @record.save
  end

  private
  def set_record
    @record = Record.includes(:user).where(exited_at: nil).find_by(users:{idm: params[:idm]})
  end
end
