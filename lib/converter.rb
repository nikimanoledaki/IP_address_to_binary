class Converter 
    attr_reader :results

    def initialize
        @results = []
    end

    def convert(ip_address)
        decimals = ip_address.split('')
        to_binary(decimals)
        display
    end

    def to_binary(decimals)
        decimals.map do |decimal|
            if decimal == "2"
                @results.push("10")
            else 
                @results.push(decimal)
            end
        end
    end

    def display
        @results.join
    end
end
