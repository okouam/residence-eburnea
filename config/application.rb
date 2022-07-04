require_relative "boot"

require "rails"
require "active_model/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module ResidenceEburneaNew
  class Application < Rails::Application

  end
end
