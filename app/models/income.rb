class Income < ActiveRecord::Base
  belongs_to :wallet
  belongs_to :user
  validates :sources, length: {maximum: 128}, presence: true
  validates :amount, presence: true
  validates :tax , presence: true
  validates :execution_date, presence: true
  validates :wallet , presence: true
  validates :user , presence: true

            
end
