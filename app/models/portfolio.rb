class Portfolio < ApplicationRecord
  
  belongs_to :user

  has_many :positions, dependent: :destroy

  def size
    portsize = 0
    positions.each do |position|
      portsize += position.position_size
    end
    portsize
  end

  def stocklist
    stocklist = []
    positions.each do |stock|
      stocklist << Stock.find_by(id: stock.stock_id).symbol
    end
    stocklist.uniq
  end
end
