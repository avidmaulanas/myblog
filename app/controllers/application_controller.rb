class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  before_action :authenticate_user!  
  before_filter :set_current_user

  before_filter :configure_devise_params, if: :devise_controller?

  # before_action :check_subdomain, unless: :devise_controller?

  protect_from_forgery

  after_filter :set_csrf_cookie_for_ng

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  protected
    def verified_request?
      super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
    end

  private
    def configure_devise_params
      devise_parameter_sanitizer.for(:sign_up) do |u|
        u.permit(:username, :email, :password, :password_confirmation)
      end
    end

    def set_current_user
      User.current = current_user
    end

    def after_sign_in_path_for(resource)
      if current_user.respond_to?("username")
        dashboard_url(:subdomain => "#{current_user.username}.#{request.subdomain}")
      end      
    end

   #  def after_sign_out_path_for(resource)
  	#   root_url(resource, :subdomain => nil)
  	# end

    def check_subdomain
      if current_user.respond_to?("username")
        unless request.subdomain.eql?(current_user.username) 
          redirect_to controller: request.params[:controller], subdomain: current_user.username
        end
      end
      if request.params[:controller].eql?("home")
        redirect_to root_url :subdomain => nil
      end
    end
end
