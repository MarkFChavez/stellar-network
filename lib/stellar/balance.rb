module Stellar
  class Balance

    attr_accessor :balance, :limit, :asset_type, :asset_code, :asset_issuer

    def initialize(attrs = {})
      attrs.each do |key, value|
        self.send("#{key}=", value)
      end
    end
  end
end
