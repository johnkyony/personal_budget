require "test_helper"

describe HistoryController do
  it "should get index" do
    get :index
    value(response).must_be :success?
  end

end
