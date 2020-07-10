module DataFormatter
    def self.format_price(price)
        sprintf("$%2.2f", price.to_f)
    end
end