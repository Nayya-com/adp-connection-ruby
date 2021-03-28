require 'adp/connection_configuration'

module Adp
  module Connection

    class AuthorizationCodeConfiguration < ConnectionConfiguration

      attr_accessor :authorizationCode
      attr_accessor :baseAuthorizationURL
      attr_accessor :redirectURL
      attr_accessor :disconnectURL
      attr_accessor :responseType
      attr_accessor :scope
      attr_accessor :state


      def initialize( config )

          super

          self.authorizationCode = config["authorizationCode"]
          self.baseAuthorizationURL = config["baseAuthorizationURL"]
          self.redirectURL = config["redirectURL"]
          self.disconnectURL = config["disconnectURL"]
          self.responseType = config["responseType"]
          self.scope = config["scope"]
          self.state = config["state"]

          self.grantType = "authorization_code"

          self
      end
    end
  end
end