class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :ensure_signup_complete, only: [:new, :create, :update, :destroy]
  before_action :configure_permitted_parameters, if: :devise_controller?

  # public_activity to set owner to current_user
  include PublicActivity::StoreController

  helper_method :mailbox, :conversation

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
  end

  def ensure_signup_complete
    # Ensure we don't go into an infinite loop
    return if action_name == 'finish_signup'

    # Redirect to the 'finish_signup' page if the user
    # email hasn't been verified yet
    if current_user && !current_user.email_verified?
      redirect_to finish_signup_path(current_user)
    end
  end

  private

  def mailbox
    @mailbox ||= current_user.mailbox
  end

  def conversation
    @conversation ||= mailbox.conversations.find(params[:id])
  end

end
