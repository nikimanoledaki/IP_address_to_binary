require 'converter'

describe Converter do
    describe '#convert' do
        it 'does not convert 0 and 1' do
            ip_address = "01.000.00.0"
            expect(subject.convert(ip_address)).to eq "01.000.00.0"
        end

        it 'converts 2 into 10' do
            ip_address = "01.200.00.00"
            expect(subject.convert(ip_address)).to eq "01.1000.00.00"
        end

        it 'converts 3 into 10' do
            ip_address = "01.230.00.00"
            expect(subject.convert(ip_address)).to eq "01.10110.00.00"
        end
    end
end
