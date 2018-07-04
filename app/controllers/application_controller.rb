class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def web

   render html: "Seja bem-vinda à primeira página estática"

  end
end
