class Api::BaseController < ApplicationController
  before_filter :init_api
  # prepend_before_filter :get_auth_token
  if ENV['RAILS_ENV'] == 'production'
    rescue_from Exception do |exception|
      if params[:format] == "json"
        @code = CODE_FAIL
        if exception.class == ActiveRecord::RecordNotFound
          @message = "발견되지 않은 리소스입니다."
        elsif exception.class == ActionController::RoutingError
          @message = "발견되지 않는 리소스 접근 입니다."
        else
          @message = "알수없는 에러 입니다."
        end
        render_error
      end
    end
  end
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
