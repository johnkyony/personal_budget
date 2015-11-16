class BalanceController < ApplicationController
  def index
    # find the current user
    user_id = User.find_by_id(current_user.id)
    # find the current user wallet id 
    wallet_id = Wallet.all.where(:user_id => user_id)
    #find the income of the current user
    income = Income.all.where(:wallet_id => wallet_id)
    #find the expense that have not been paid off of the current user
    expenses = Expense.all.where(:done => false,:wallet_id => wallet_id)
    #find the balance of by minus the income with the expense
    @balance = income.sum(:amount) - expenses.sum(:amount)
    
  end
end
