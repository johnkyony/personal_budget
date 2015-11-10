class BalanceController < ApplicationController
  def index
    income = Income.all
    expenses = Expense.all.where(:done => false)
    @balance = income.sum(:amount) - expenses.sum(:amount)
    
  end
end
