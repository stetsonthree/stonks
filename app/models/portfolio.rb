class Portfolio < ApplicationRecord
  
  belongs_to :user

  has_many :positions, dependent: :destroy

  def size
    positions.sum(:cost_cents) * 0.01
  end
end
