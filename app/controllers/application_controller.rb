class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session
  before_filter :get_component_status
  
  def get_component_status
    components_ko = Component.where(available: false)
    if components_ko.any?
  	  @component_status = "status-ko"
    else
  	  @component_status = "status-ok"
    end
  end

end