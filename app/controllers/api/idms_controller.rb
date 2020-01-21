class Api::IdmsController < ApplicationController
  def update
    @user = User.find(params[:id])
    @user.update(idm: params[:idm])
  end
end
