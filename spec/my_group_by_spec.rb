require_relative "../my_group_by"

describe Array do
  describe "#my_group_by" do
    let(:actual) { array.my_group_by {|i| i % 2} }

    context "empty array" do
      let(:array) { [] }
      let(:expected) { {} }

      it "returns an empty hash" do
        expect(actual).to eq(expected)
      end
    end

    context "one element in array" do
      let(:array) { [1] }
      let(:expected) { {1 => [1]} }

      it "returns hash with one key/value pair" do
        expect(actual).to eq(expected)
      end
    end

    context "only odd elements in array" do
      let(:array) { [1,3,5] }
      let(:expected) { {1 => [1,3,5]} }

      it "returns hash with one key/value pair" do
        expect(actual).to eq(expected)
      end
    end

    context "odd and even elements in array" do
      let(:array) { [1,2,3] }
      let(:expected) { {1 => [1,3], 0 => [2]} }

      it "returns hash with one key/value pair" do
        expect(actual).to eq(expected)
      end
    end
  end
end
