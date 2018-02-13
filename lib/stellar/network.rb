require "stellar/network/version"
require "stellar/balance"
require "stellar/network/balances"

module Stellar
  module Network
    def self.balances_for(account_id)
      Balances.from(account_id)
    end
  end
end
