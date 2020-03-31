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
            if dictionary(decimal) != nil
                @results.push(dictionary(decimal))
            else
                @results.push(decimal)
            end
        end
    end

    def dictionary(decimal)
        dictionary = { "0" => 0, "1" => "1", "2" => "10", 
        "3" => "11", "4" => "100", "5" => "101", "6" => "110",
        "7" => "111", "8" => "1000", "9" => "1001" }
        dictionary[decimal]
    end

    def display
        @results.join
    end
end
