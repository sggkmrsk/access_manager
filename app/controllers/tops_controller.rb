class TopsController < ApplicationController
  before_action :confirm_sign_in

  def index
  end

  private

  def confirm_sign_in
    if user_signed_in?
      redirect_to informations_path
    end
  end
end