# Controller for the app
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
