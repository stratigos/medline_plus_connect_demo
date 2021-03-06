require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MedlinePlusConnectDemo
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.autoload_paths += %W(
      #{config.root}/app/errors/ #{config.root}/app/presenters/ #{config.root}/app/services/ #{config.root}/lib/
    )

    config.eager_load_paths += %W(
      #{config.root}/app/errors/ #{config.root}/app/presenters/ #{config.root}/app/services/ #{config.root}/lib/
    )
  end
end
