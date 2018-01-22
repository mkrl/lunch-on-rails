class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private

  def logged_in?
    @current_worker ||= Worker.find(session[:worker_id]) if session[:worker_id]
  end
  
  helper_method :logged_in?
  
end
