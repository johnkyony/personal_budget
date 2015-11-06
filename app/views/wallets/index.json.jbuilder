json.array!(@wallets) do |wallet|
  json.extract! wallet, :id, :name, :amount, :user_id
  json.url wallet_url(wallet, format: :json)
end
