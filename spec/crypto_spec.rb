require_relative '../lib/crypto.rb'

describe "the crypto method" do
  it "should not return nil" do
    expect(get_cryptocurrencies_values).not_to be_nil
  end
end
