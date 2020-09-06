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
end
