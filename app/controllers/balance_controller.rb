class BalanceController < ApplicationController
  def index
    income = Income.all.sum
    expenses = Expense.all.sum
    @balance = income - expenses
    
  end
end
