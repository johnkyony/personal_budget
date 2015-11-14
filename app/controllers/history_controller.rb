class HistoryController < ApplicationController
  def index
    @expense_history = Expense.all.where(:done => true)
    @expenses_balance = @expense_history.sum(:amount)
    
  end
end
