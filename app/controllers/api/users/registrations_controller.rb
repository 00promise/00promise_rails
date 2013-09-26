class Api::Users::RegistrationsController < Devise::SessionsController
  prepend_before_filter :require_no_authentication, :only => [:create]
  respond_to :json

  def create
    user = User.new
    user.email = params[:email]
    user.password = params[:password]
    if user.save
      user.ensure_authentication_token!
      render :json => { :success => true, :auth_token => user.authentication_token, :email => user.email }, :status => 201
      return
    else
      warden.custom_failure!
      render :json => { :success => false, :message => user.errors.full_messages.join(", ") }, :status => 422
    end
  end
end
