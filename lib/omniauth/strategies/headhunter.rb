require 'omniauth'
require 'omniauth/strategies/oauth2'
require 'multi_json'
require 'pp'

module OmniAuth
  module Strategies
    class Headhunter < OmniAuth::Strategies::OAuth2
      class NoRawData < StandardError; end

      API_VERSION = '2.0'

      DEFAULT_SCOPE = ''

      option :name, 'headhunter'

      option :client_options, {
        :site          => 'https://hh.ru/',
        :token_url     => 'https://hh.ru/oauth/token',
        :authorize_url => 'https://hh.ru/oauth/authorize',
      }

      option :authorize_options, [:scope, :display]

      option :redirect_url, nil

      private

      def callback_url
        options.redirect_url || (full_host + script_name + callback_path)
      end
    end
  end 
end