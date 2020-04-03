class Converter 
    attr_reader :results, :calculator

    def initialize(calculator)
        @calculator = calculator
        @results = []
    end

    def convert(ip_address)
        fields = ip_address.split('.')
        iterate(fields)
        display
    end

    def iterate(fields)
        fields.map do |field|
            result = calculate(field.to_i)
            @results.push(result)
        end
    end

    def calculate(field)
        @calculator.execute(field) 
    end

    def display
        @results.join('.')
    end
end
