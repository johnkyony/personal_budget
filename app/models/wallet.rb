class Wallet < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :name
  validates :amount, numericality: { decimal: true }, allow_blank: true
  validates :user , presence: true
end
