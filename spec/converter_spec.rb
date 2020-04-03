require 'converter'

describe Converter do
    describe '#convert' do
        it 'does not convert 0 and 1' do
            ip_address = "1.1.1.1"
            calculator = instance_double('Calculator')
            expect(calculator).to receive(:execute).exactly(4).times.with(1).and_return(1)
            subject = Converter.new(calculator)
            expect(subject.convert(ip_address)).to eq "1.1.1.1"
        end
    end
end
