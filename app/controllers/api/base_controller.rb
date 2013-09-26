class Api::BaseController < ApplicationController

protected

  def auth_user
    unless user_signed_in?
      render :json => { :success => false, :message => "Unauthorized user" }, :status => 401
      return
    end
  end
end
