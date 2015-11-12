require "test_helper"

describe Kind do
  let(:kind) { Kind.new }

  it "must be valid" do
    value(kind).must_be :valid?
  end
end
