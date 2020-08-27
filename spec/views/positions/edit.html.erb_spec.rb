require 'rails_helper'

RSpec.describe "positions/edit", type: :view do
  before(:each) do
    @position = assign(:position, Position.create!(
      cost: 1,
      quantity: "9.99",
      notes: "MyText",
      status: false,
      portfolio: nil,
      stock: nil
    ))
  end

  it "renders the edit position form" do
    render

    assert_select "form[action=?][method=?]", position_path(@position), "post" do

      assert_select "input[name=?]", "position[cost]"

      assert_select "input[name=?]", "position[quantity]"

      assert_select "textarea[name=?]", "position[notes]"

      assert_select "input[name=?]", "position[status]"

      assert_select "input[name=?]", "position[portfolio_id]"

      assert_select "input[name=?]", "position[stock_id]"
    end
  end
end
