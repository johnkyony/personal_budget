class HistoryController < ApplicationController
  def index
    expense = Expense.all.where(:done => true)
  end
end
