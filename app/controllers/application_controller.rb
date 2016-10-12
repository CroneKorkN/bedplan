class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  layout proc{ false if request.xhr? }
  http_basic_authenticate_with name: "silberberg", password: "november"
end
