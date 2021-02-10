require 'adp/connection'

module Adp
  module Product
    module Userinfo
      class Helper
        attr_accessor :connection

        # @param [Object] conn
        def initialize(conn)
          raise ConnectionException, "Connection error: invalid connection (null)" unless (!conn.nil?)

          self.connection = conn

          @producturl = "https://api.adp.com/core/v1/userinfo"
        end


        # @return [Object]
        def get_user_info

          #Checking if we have connection object
          raise ConnectionException, "Connection error: not connected" unless !self.connection.nil?

          #Checking if we are connected
          raise ConnectionException, "Connection error: not connected" unless self.connection.is_connected_indicator?

          #Now get the adp data using #{@producturl}
          data = self.connection.get_adp_data(@producturl)

          return data
        end
      end
    end
  end
end