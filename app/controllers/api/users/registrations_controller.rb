class Api::Users::RegistrationsController < Api::BaseController
  def create
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]
    if @user.save
      @user.ensure_authentication_token!
    else
      warden.custom_failure!
      @code = CODE_FAIL
      render :json => { :code => @code, :message => @user.errors.full_messages.join(", ") }
    end
  end

  # TODO 토큰인증 하는걸로 바꿔야 대는데.....
  def social_create
    @user = User.find_by_social_id(params[:social_id])
    unless @user.nil?
      render
    else
      @user = User.new
      @user.email = params[:email]
      @user.nickname = params[:nickname]
      @user.img = params[:img]
      @user.social_id = params[:social_id]
      @user.password = params[:password]
      @user.password_confirmation = params[:password_confirmation]
      if @user.save
        @user.ensure_authentication_token!
      else
        warden.custom_failure!
        @code = CODE_FAIL
        render :json => { :code => @code, :message => @user.errors.full_messages.join(", ") }
      end
    end
  end
end
