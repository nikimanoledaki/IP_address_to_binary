require 'converter'

describe Converter do

    describe '#convert' do
        it 'displays IP address as binary code' do
            calculator = instance_double('Calculator')
            subject = Converter.new(calculator)
            ip_address = "74.125.43.99"
            expect(calculator).to receive(:execute).with(74).and_return("1001010")
            expect(calculator).to receive(:execute).with(125).and_return("1111101")
            expect(calculator).to receive(:execute).with(43).and_return("101011")
            expect(calculator).to receive(:execute).with(99).and_return("1100011")
            expect(subject.execute(ip_address)).to eq "01001010.01111101.00101011.01100011"
        end
    end
end
