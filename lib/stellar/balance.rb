module Stellar
  class Balance
    attr_reader :balance, :asset_type

    def initialize(balance, asset_type)
      @balance = balance
      @asset_type = asset_type
    end
  end
end
