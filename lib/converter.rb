class Converter 
    attr_reader :results

    def initialize
        @results = []
    end

    def convert(ip_address)
        fields = ip_address.split('.')
        iterate(fields)
        display
    end

    def iterate(fields)
        fields.map do |field|
            result = calculator(field.to_i)
            @results.push(result)
        end
    end

    def calculator(field, calculator = Calculator.new)
        calculator.execute(field) 
    end

    def display
        @results.join('.')
    end
end
