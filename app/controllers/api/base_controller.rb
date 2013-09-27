class Api::BaseController < ApplicationController
  before_filter :init_api

protected

  def auth_user
    unless user_signed_in?
      render :json => { :success => false, :message => "Unauthorized user" }, :status => 401
      return
    end
  end

  def init_api
    @code = CODE_OK
    @message = ""
  end
end
