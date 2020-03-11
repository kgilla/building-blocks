require "./lib/caesar"

  
describe "#encode" do
  it "returns an empty string" do
    expect(encode("", 6)).to eql("")
  end

  it "returns a shifted word" do
    expect(encode("abcdef", 1)).to eql("bcdefg")
  end

  it "doesn't shift alpha characters" do
    expect(encode("abc123", 1)).to eql("bcd123")
  end

  it "accepts uppercase and lowercase input and shifts them appropriately" do
    expect(encode("ABCabc", 1)).to eql("BCDbcd")
  end

  it "accepts a negative key" do 
    expect(encode("aaa", -1)).to eql("zzz")
  end
end