require "test_helper"

describe ExpensesController do
  let(:expense) { expenses :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:expenses)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates expense" do
    expect {
      post :create, expense: { amount: expense.amount, done: expense.done, name: expense.name, user_id: expense.user_id, wallet_id: expense.wallet_id }
    }.must_change "Expense.count"

    must_redirect_to expense_path(assigns(:expense))
  end

  it "shows expense" do
    get :show, id: expense
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: expense
    value(response).must_be :success?
  end

  it "updates expense" do
    put :update, id: expense, expense: { amount: expense.amount, done: expense.done, name: expense.name, user_id: expense.user_id, wallet_id: expense.wallet_id }
    must_redirect_to expense_path(assigns(:expense))
  end

  it "destroys expense" do
    expect {
      delete :destroy, id: expense
    }.must_change "Expense.count", -1

    must_redirect_to expenses_path
  end
end
