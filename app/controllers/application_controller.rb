class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
  
  # rushabh suggested for cross domain problem
  after_filter :set_cors
  def set_cors
    headers['Access-Control-Allow-Origin'] = 'https://bruce-yu-xi.github.io'
    # headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Content-Type'

  end
  
end

# class ApplicationController < ActionController::Base
#   # Prevent CSRF attacks by raising an exception.
#   # For APIs, you may want to use :null_session instead.
#   protect_from_forgery with: :exception

#   after_filter :set_cors

#   def set_cors
#     headers['Access-Control-Allow-Origin'] = 'https://bruce-yu-xi.github.io'
#     headers['Access-Control-Request-Method'] = '*'
#   end
# end