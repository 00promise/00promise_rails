class Api::BaseController < ApplicationController
  before_filter :init_api
  # prepend_before_filter :get_auth_token

protected

  def auth_user
    unless user_signed_in?
      @message = "로그인이 필요합니다."
      render :json => { :code => CODE_UNAUHTORHIZED, :message => @message }
      return
    end
  end

  def init_api
    @code = CODE_OK
    @message = ""
  end

  # def get_auth_token
  #   if auth_token = params[:auth_token].blank? && request.headers["access_token"]
  #     params[:auth_token] = auth_token
  #   end
  # end

  def render_error
    render :json => { :code => @code, :message => @message }
  end
end
