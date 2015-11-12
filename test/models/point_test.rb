require "test_helper"

describe Point do
  let(:point) { Point.new }

  it "must be valid" do
    value(point).must_be :valid?
  end
end
