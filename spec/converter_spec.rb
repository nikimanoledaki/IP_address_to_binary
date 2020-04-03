require 'converter'

describe Converter do
    describe '#convert' do
        it 'does not convert 0 and 1' do
            ip_address = "1.1.1.1"
            expect(subject.convert(ip_address)).to eq "1.1.1.1"
        end
    end
end
