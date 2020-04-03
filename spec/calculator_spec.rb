require 'calculator'

describe Calculator do
    describe "#execute" do
        it "returns binary code for decimals outside binary sequence" do
            expect(subject.execute(74)).to eq "1001010"
        end
    end
end
