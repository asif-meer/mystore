class ApplicationController < ActionController::Base
  before_filter :authenticate_user!
  include ExceptionLogger::ExceptionLoggable # loades the module
  rescue_from Exception, :with => :log_exception_handler # tells rails to forward the 'Exception' (you can change the type) to the handler of the module
  protect_from_forgery
end
