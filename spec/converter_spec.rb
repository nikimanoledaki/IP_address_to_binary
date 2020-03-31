require 'converter'

describe Converter do
    describe '#convert' do
        it 'does not convert 0 and 1' do
            ip_address = "01.010.01.01"
            expect(subject.convert(ip_address)).to eq "01.010.01.01"
        end

        it 'converts 2 into 10' do
            ip_address = "02.020.01.01"
            expect(subject.convert(ip_address)).to eq "010.0100.01.01"
        end
    end
end
