require 'net/http'
require 'json'

TEST_NETWORK = 'https://horizon-testnet.stellar.org'

module Stellar
  module Network
    class Balances
      def self.from(account_id)
        body = Net::HTTP.get(URI("#{TEST_NETWORK}/accounts/#{account_id}"))
        JSON.parse(body)["balances"].map do |hash|
          Stellar::Balance.new(hash)
        end
      end
    end
  end
end
