require 'converter'

describe Converter do
    describe '#convert' do
        it 'takes a string as an input' do
            ip_address = "00.000.00.00"
            expect(subject.convert(ip_address)).to eq "00.000.00.00"
        end
    end
end
