class ApplicationController < ActionController::Base
  protect_from_forgery
  include ProgramsHelper
  include UsersHelper
  include MessagesHelper

  rescue_from CanCan::AccessDenied do |exce|
    redirect_to session[:current_path]
  end

  helper_method :current_user
  helper_method :store_current_path

  def headshot_custom_file_path
    file_name = "#{current_user.username}_#{Time.now.to_i}.jpg"
    File.join(Rails.root, 'app', 'assets', 'images', file_name)
  end


  private

  def render_error
    render :file => "public/404.html", :status => 404
  end


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

end
