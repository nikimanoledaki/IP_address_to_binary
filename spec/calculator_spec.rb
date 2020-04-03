require 'calculator'

describe Calculator do
    describe "#execute" do
        it "executes decimal to binary calculation" do
            expect(subject.execute(1)).to eq 1
        end
    end
end