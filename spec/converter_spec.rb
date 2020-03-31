require 'converter'

describe Converter do
    describe '#convert' do
        it 'does not convert 0 and 1' do
            ip_address = "01.000.00.0"
            expect(subject.convert(ip_address)).to eq "01.000.00.0"
        end

        it 'converts decimals into binary up to 9' do
            ip_address = "04.005.03.09"
            expect(subject.convert(ip_address)).to eq "0100.00101.011.01001"
        end
    end
end
