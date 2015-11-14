class HistoryController < ApplicationController
  def index
     # find user id to make sure its the current user
     user_id = User.find_by_id(current_user.id)
    # find  the current user expenses 
    @expense_history = Expense.all.where(:user_id => user_id , :done =>true)
  end
end
