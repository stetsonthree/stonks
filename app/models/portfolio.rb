class Portfolio < ApplicationRecord
  
  belongs_to :user

  has_many :positions, dependent: :destroy

  def size
    self.positions.sum(:cost_cents)
  end
end
