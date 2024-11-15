# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: [ :create ]
  before_action :configure_account_update_params, only: [ :update ]

  protected

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [ :username ])
    logger.debug "Allowed params: #{devise_parameter_sanitizer.permit(:sign_up).inspect}"
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, keys: [ :username ])
  end

  def create
    Rails.logger.debug "Sign up params: #{params.inspect}"
    super
  end
end
