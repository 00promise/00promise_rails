class Api::Users::SessionsController < Devise::SessionsController
  prepend_before_filter :require_no_authentication, :only => [:create]
  # include Devise::Controllers::InternalHelpers
  # include Devise::Controllers::Helpers
  respond_to :json

  def create
    resource = User.find_for_database_authentication(:email => params[:email])
    return invalid_login_attempt unless resource

    if resource.valid_password?(params[:password])
      # sign_in(:user, resource)
      resource.ensure_authentication_token!
      render :json => { :success => true, :auth_token => resource.authentication_token, :email => resource.email }
      return
    end
    invalid_login_attempt
  end

  def destroy
    current_user.reset_authentication_token!
    render :json => { :success => true }
  end

protected

  def invalid_login_attempt
    warden.custom_failure!
    render :json => { :success => false, :message => "Error with your login or password" }, :status => 401
  end
end
