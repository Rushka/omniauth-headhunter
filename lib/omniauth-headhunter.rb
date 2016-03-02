require "omniauth-headhunter/version"
require "omniauth"

module OmniAuth
  module Strategies
    autoload :Headhunter,  'omniauth/strategies/headhunter'
  end
end

OmniAuth.config.add_camelization 'Headhunter', 'Headhunter'
