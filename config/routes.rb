Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'publico/inicio'
  get 'publico/cerrar_sesion'
  get 'privado/inicio'
  root 'publico#inicio'
end
