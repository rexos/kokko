class ApplicationController < ActionController::Base
  protect_from_forgery
  include ProgramsHelper

  rescue_from CanCan::AccessDenied do |exce|
    redirect_to session[:current_path]
  end

  helper_method :current_user
  helper_method :store_current_path

  private

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user ||= User.find_by_token(cookies[:token]) if !cookies[:token].nil?
    end 
  end
  
  def store_current_path
    session[:current_path] = request.fullpath
  end
  
  def previous_path
    session[:current_path]
  end

end
