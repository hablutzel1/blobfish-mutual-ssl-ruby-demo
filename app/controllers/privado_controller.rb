class PrivadoController < ApplicationController
  def inicio

    ##
    # NOTE que el siguiente bloque podría trasladarse al sitio donde se gestione la autenticación para toda la aplicación,
    # ej. un middleware en particular. Sin embargo, se deberá asegurar que aquella parte de la aplicación se ejecute después
    # del middleware de 'blobfish-mutual-ssl-ruby'.
    # ##########################################
    cert_de_cliente = request.env['client_cert']
    unless cert_de_cliente
      render plain: "No se presentó un certificado de autenticación de cliente", status: :forbidden
      return
    end
    # Estos números de serie autorizados podrían estar registrados en la base de datos.
    numeros_de_serie_autorizados = ["B608CCFF0AEA4358", "..."]
    unless numeros_de_serie_autorizados.include?(cert_de_cliente.serial_hex)
      render plain: "El certificado presentado no se encuentra autorizado", status: :forbidden
      return
    end
    ############################################

    @sujeto_del_cert = cert_de_cliente.subject
    @serie_del_cert = cert_de_cliente.serial_hex
  end
end
