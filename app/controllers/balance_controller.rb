class BalanceController < ApplicationController
  def index
    # find the current user
    user_id = User.find_by_id(current_user.id)
    #find the income of the current user
    income = Income.all.where(:user_id => user_id)
    #find the expense that have not been paid off of the current user
    expenses = Expense.all.where(:done => false,:user_id => user_id)
    #find the balance of by minus the income with the expense
    @balance = income.sum(:amount) - expenses.sum(:amount)
    
  end
end
