class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #begin translate 
  before_filter :set_locale

  private
  #def extract_locale_from_accept_language_header
  #request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  #end
   def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale]= I18n.locale
    #I18n.locale = extract_locale_from_accept_language_header || I18n.default_locale
    #I18n.locale = current_user.try(:locale) || I18n.default_locale
    #I18n.locale = session[:locale] || I18n.default_locale
    #session[:locale] = I18n.locale
  end

   before_action :configure_permitted_parameters, if: :devise_controller?

   protected
  	def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:first_name, :last_name, :username, :birthday, :email, :password, :remember_me)}
		devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
		devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:first_name, :last_name, :username, :birthday,:about, :email, :password,:current_password, :remember_me)}
  	end
end
