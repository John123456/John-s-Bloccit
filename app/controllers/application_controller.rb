class ApplicationController < ActionController::Base
  protect_from_forgery

rescue_from CanCan::AccessDenied do |exeception|
  redirect_to root_url, :alert => exeception.message
  end
end
