json.array!(@incomes) do |income|
  json.extract! income, :id, :sources, :amount, :tax, :execution_date, :wallet_id, :user_id
  json.url income_url(income, format: :json)
end
