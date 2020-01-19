class EnteredExitedsController < ApplicationController
  before_action :set_record

  def index

  end

  def create
    t = Time.now
    record = Record.new(entered_at: t,user_id: @user.id)
    record.save
  end

  def update
    t = Time.now
    @record.exited_at = t
    @record.save
  end

  private
  def set_record
    binding.pry
    @record = Record.includes(:user).where(exited_at: nil).find_by(users:{idm: param[:idm]})
  end
end
