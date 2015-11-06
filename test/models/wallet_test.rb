require "test_helper"

describe Wallet do
  let(:wallet) { Wallet.new }

  it "must be valid" do
    value(wallet).must_be :valid?
  end
end
