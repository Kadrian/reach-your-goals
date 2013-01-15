class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
      if user_signed_in?
        redirect_to bars_path
      else
        render :index
      end
  end

end

