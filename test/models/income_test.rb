require "test_helper"

describe Income do
  let(:income) { Income.new }

  it "must be valid" do
    value(income).must_be :valid?
  end
end
