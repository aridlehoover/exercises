require_relative '../my_set'

describe MySet do
  let(:set) { MySet.new }

  describe "#include?" do
    it "returns false on an empty set" do
      expect(set.include?("not there")).to be false
    end
  end

  describe "#add" do
    it "adds an item to the set" do
      set.add("present")
      expect(set.include?("present")).to be true
    end
  end

  describe "#delete" do
    it "removes an item from the set" do
      set.add("delete me")
      set.delete("delete me")
      expect(set.include?("delete me")).to be false
    end
  end
end
