require "test_helper"

describe Expense do
  let(:expense) { Expense.new }

  it "must be valid" do
    value(expense).must_be :valid?
  end
end
