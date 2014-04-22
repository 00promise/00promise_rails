class Api::Users::SessionsController < Api::BaseController
# class Api::Users::SessionsController < Devise::SessionsController
  # prepend_before_filter :require_no_authentication, :only => [:create]

  def create
    @user = User.find_for_database_authentication(:email => params[:email])

    if @user && @user.valid_password?(params[:password])
      # sign_in(:user, @user)
      @user.ensure_authentication_token!
    else
      @message = "계정 혹은 비밀번호를 다시 확인해주시기 바랍니다."
      invalid_attempt
    end
  end

  def destroy
    if user_signed_in?
      current_user.reset_authentication_token!
      render :json => { :code => @code, :message => "성공적으로 로그아웃하였습니다." }
    else
      @message = "잘못된 접근입니다."
      invalid_attempt
    end
  end

protected

  def invalid_attempt
    warden.custom_failure!
    @code = CODE_UNAUHTORHIZED
    render :json => { :code => @code, :message => @message }
  end
end
