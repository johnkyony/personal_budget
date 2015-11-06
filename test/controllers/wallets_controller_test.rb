require "test_helper"

describe WalletsController do
  let(:wallet) { wallets :one }

  it "gets index" do
    get :index
    value(response).must_be :success?
    value(assigns(:wallets)).wont_be :nil?
  end

  it "gets new" do
    get :new
    value(response).must_be :success?
  end

  it "creates wallet" do
    expect {
      post :create, wallet: { amount: wallet.amount, name: wallet.name, user_id: wallet.user_id }
    }.must_change "Wallet.count"

    must_redirect_to wallet_path(assigns(:wallet))
  end

  it "shows wallet" do
    get :show, id: wallet
    value(response).must_be :success?
  end

  it "gets edit" do
    get :edit, id: wallet
    value(response).must_be :success?
  end

  it "updates wallet" do
    put :update, id: wallet, wallet: { amount: wallet.amount, name: wallet.name, user_id: wallet.user_id }
    must_redirect_to wallet_path(assigns(:wallet))
  end

  it "destroys wallet" do
    expect {
      delete :destroy, id: wallet
    }.must_change "Wallet.count", -1

    must_redirect_to wallets_path
  end
end
