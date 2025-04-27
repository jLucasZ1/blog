class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern

  def authorize_admin!
    unless admin_signed_in?
      redirect_to new_admin_session_path, alert: "Você precisa estar logado como administrador para acessar esta página."
    end
  end
end
