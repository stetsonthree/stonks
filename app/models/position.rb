class Position < ApplicationRecord
  belongs_to :portfolio
  belongs_to :stock

  monetize :cost_cents, as: "cost"

  def position_size
    cost * quantity
  end

  def portfolio_part
    ((position_size / portfolio.size) * 100).round(2)
  end

  def days_held
    (close_date - open_date).to_i
  end
end
