class ApplicationController < ActionController::Base
  protect_from_forgery

  private
  def not_authenticated
    redirect_to login_path, alert: "For CQA Clients Only- Please login to obtain our private resources and information."
  end
end
