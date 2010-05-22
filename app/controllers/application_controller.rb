# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base

  #include Authentication 
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
include AuthenticatedSystem

  filter_parameter_logging :password
  #before_filter :user_login_required
  helper_method :super_user?, :owner_user?, :customer_user?
  
  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
  
  
  
  protected
  
	def redirect_to_landing_page
		redirect_to admins_path
		
	end
    def check_admins
		if !admin?
			flash[:notice] = "Access restricted. Only Super Admins can access this area."
			redirect_to_landing_page
		end
	end
	def owner_user?
		return false if current_user.nil? || current_user.user_type.name != "Owner"
		true
	end
	def customer_user?
		return false if current_user.nil? || current_user.user_type.name != "Customer"
		true
	end
	def super_user?
		return false if current_user.nil? || current_user.user_type.name != "Admin"
		true
	end
end
