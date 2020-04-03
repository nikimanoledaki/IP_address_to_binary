class Converter 
    attr_reader :results, :calculator

    def initialize(calculator)
        @calculator = calculator
        @temporary = []
    end

    def execute(ip_address)
        fields = ip_address.split('.')
        transform(fields)
        display
    end

    def transform(fields)
        fields.map do |field|
            result = calculate(field.to_i)
            @temporary.push(result)
        end
    end

    def calculate(field)
        @calculator.execute(field) 
    end

    def display
        results = @temporary.map { |field| sprintf '%08d', field.to_i }
        results.join('.')
    end
end
