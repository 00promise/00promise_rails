class Api::BaseController < ApplicationController
  before_filter :init_api

protected

  def auth_user
    unless user_signed_in?
      @message = "로그인이 필요합니다."
      render :json => { :code => CODE_FAIL, :message => @message }, :status => 401
      return
    end
  end

  def init_api
    @code = CODE_OK
    @message = ""
  end
end
