# IP Address to Binary

This simple algorithm converts an IP Address into binary code. 
It is written in Ruby and fully tested with RSpec.

## Get started
After cloning into this repository, install the gems.
```
$ bundle install
```

Then, in `irb`, run the program like this:
```
> require './lib/converter.rb'
=> true
> require './lib/calculator.rb'
=> true
> calculator = Calculator.new
=> #<Calculator:0x00007fe2ee97ebf8>
> converter = Converter.new(calculator)
=> #<Converter:0x00007fe2ee985d68 @calculator=#<Calculator:0x00007fe2ee97ebf8>, @temporary=[]>
> ip = "74.125.43.99"
=> "74.125.43.99"
> converter.execute(ip)
=> "01001010.01111101.00101011.01100011"
```

## Run the tests
Run the tests at the root of the repository.
```
$ rspec
```
## Passing Criteria

convert("74.125.43.99") => "01001010.01111101.00101011.01100011"

convert(1) => "Error: Please input the correct format"
