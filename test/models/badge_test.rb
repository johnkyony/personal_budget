require "test_helper"

describe Badge do
  let(:badge) { Badge.new }

  it "must be valid" do
    value(badge).must_be :valid?
  end
end
