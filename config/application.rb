require_relative 'boot'

require 'rails/all'

# FIXME confirmar si en realidad esto es requerido. No se debería requerir/incluir automáticamente?.
require 'blobfish/ssl/middleware'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BlobfishMutualSslRubyDemo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    # Con esta línea se instala el middleware de 'blobfish-mutual-ssl-ruby'.
    config.middleware.use Blobfish::Ssl::Middleware
  end
end
