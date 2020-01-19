class EnteredExitedsController < ApplicationController
  before_action :set_user,except: :index
  before_action :set_record,except: :index

  def index

  end

  def create
    t = Time.now
    record = Record.new(entered_at: t,user_id: @user.id)
    record.save
    respond_to do |format|
      format.html {redirect_to root_path}
      format.json
    end
  end

  def update
    t = Time.now
    @record.exited_at = t
    @record.save
    respond_to do |format|
      format.html {redirect_to root_path}
      format.json
    end
  end

  private
  def set_user
    if user_signed_in?
      @user = current_user
    else
      @user = User.find_by(idm: params[:idm])
    end
  end

  def set_record
    @record = Record.includes(:user).where(exited_at: nil).find_by(users:{idm: @user.idm})
  end
end
