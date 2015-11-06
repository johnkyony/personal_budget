json.array!(@expenses) do |expense|
  json.extract! expense, :id, :name, :amount, :done, :wallet_id, :user_id
  json.url expense_url(expense, format: :json)
end
