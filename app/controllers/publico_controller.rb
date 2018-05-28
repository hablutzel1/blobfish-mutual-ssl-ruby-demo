class PublicoController < ApplicationController
  def inicio
  end

  def cerrar_sesion
    # En realidad, la única manera totalmente efectiva de cerrar la sesión cuando se inicia sesión con un certificado digital
    # es cerrando el navegador, por lo tanto solo se alerta al usuario.
    flash[:notice] = "Para completar el cierre de sesión, se requiere cerrar el navegador."
    redirect_to action: :inicio
  end
end
