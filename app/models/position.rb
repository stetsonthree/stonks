class Position < ApplicationRecord
  belongs_to :portfolio
  belongs_to :stock

  monetize :cost_cents, as: "cost"

  def position_size
    cost * quantity
  end
end
