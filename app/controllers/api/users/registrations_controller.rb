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
      render :json => { :code => @code, :message => @user.errors.full_messages.join(", ") }, :status => 422
    end
  end
end
