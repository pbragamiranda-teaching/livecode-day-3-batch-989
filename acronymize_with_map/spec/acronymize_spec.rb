require_relative "../acronymize"

describe "#acronymize" do

  it "returns an empty string when passed an empty string" do
    actual = acronymize("") # setup the actual method
    expected = "" # what I expect to happen
    expect(actual).to eq(expected) # passes if `actual == expected`
  end

  it "return the right acronym" do
    actual = acronymize("Frequently Asked Questions")
    expected = "FAQ"
    expect(actual).to eq(expected)
  end

end
