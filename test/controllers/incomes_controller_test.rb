require "test_helper"

describe IncomesController do
  let(:income) { incomes :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:incomes)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates income" do
    expect {
      post :create, income: { amount: income.amount, execution_date: income.execution_date, sources: income.sources, tax: income.tax, user_id: income.user_id, wallet_id: income.wallet_id }
    }.must_change "Income.count"

    must_redirect_to income_path(assigns(:income))
  end

  it "shows income" do
    get :show, id: income
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: income
    value(response).must_be :success?
  end

  it "updates income" do
    put :update, id: income, income: { amount: income.amount, execution_date: income.execution_date, sources: income.sources, tax: income.tax, user_id: income.user_id, wallet_id: income.wallet_id }
    must_redirect_to income_path(assigns(:income))
  end

  it "destroys income" do
    expect {
      delete :destroy, id: income
    }.must_change "Income.count", -1

    must_redirect_to incomes_path
  end
end
