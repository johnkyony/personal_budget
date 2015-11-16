class Expense < ActiveRecord::Base
  belongs_to :wallet
  belongs_to :user
  validates :name, length: {maximum: 128}, presence: true
  validates :amount, presence: true
            
             
  # validates :amount ,format: {with: /^\d+?(?:\.\d{0,2})?$/, message: I18n.t('errors.messages.invalid_price')}
  validates :amount , numericality: {greater_than: 0}  
  validates :excution_date, presence: true
  # validates :execution_date ,format: {with: /^(20\d\d)-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[01])$/, message: I18n.t('errors.messages.invalid_date')} 
            
  validates :wallet, presence: true
  validates :user , presence: true

  # scope :not_categorized, where(wallet_id: 0)
end
