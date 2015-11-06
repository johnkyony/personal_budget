class Expense < ActiveRecord::Base
  belongs_to :wallet
  belongs_to :user
end
