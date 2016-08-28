class ApplicationController < ActionController::Base
 # http_basic_authenticate_with :name => "huihui", :password => "test1234"
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #begin translate 
  before_filter :set_locale
  private

  def set_page_title
    @page_title = "Zappatory.com - Supportive Apps Directory"
  end
  private
  #def extract_locale_from_accept_language_header
  #request.env['HTTP_ACCEPT_LANGUAGE'].scan(/^[a-z]{2}/).first
  #end
   def set_locale
    #I18n.locale = params[:locale] || I18n.default_locale
    #Rails.application.routes.default_url_options[:locale]= I18n.locale
    #<li class="submenu-item"><%= link_to_unless I18n.locale == :en, "English", locale: :en %></li>
    #<li class="submenu-item"><%= link_to_unless I18n.locale == :de, "Deutsch", locale: :de %></li>
    #I18n.locale = extract_locale_from_accept_language_header || I18n.default_locale
    #I18n.locale = current_user.try(:locale) || I18n.default_locale
    I18n.locale = session[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end

   before_action :configure_permitted_parameters, if: :devise_controller?

   protected
  	def configure_permitted_parameters
  	devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:first_name, :last_name, :username, :birthday, :email, :password, :remember_me)}
		devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:email, :password, :remember_me)}
		devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:first_name, :last_name, :username, :birthday,:about, :email, :password,:current_password, :remember_me)}
  	end

  before_filter :set_cache_buster

    def set_cache_buster
       response.headers["Cache-Control"] = "no-cache, no-store, max-age=0, must-revalidate"
       response.headers["Pragma"] = "no-cache"
       response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
    end
end
