# IP Address to Binary

This simple algorithm converts an IP Address into a binary code. 
It is written in Ruby and fully tested with RSpec.

## Get started
After cloning into this repository, install the gems.
```
$ bundle install
```

## Run the tests
Run the tests at the root of the repository.
```
$ rspec
```
## Passing Criteria

convert(74.125.43.99) => 01001010.01111101.00101011.01100011
convert(1) => "Error: Please input the correct format"

## Process

| input | output |
| ----- | ------ |
| 0     | 0      |
| 1     | 1      |
| 2     | 10     |
| 3     | 11     |
| 4     | 110    |

