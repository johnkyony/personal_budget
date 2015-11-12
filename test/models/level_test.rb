require "test_helper"

describe Level do
  let(:level) { Level.new }

  it "must be valid" do
    value(level).must_be :valid?
  end
end
