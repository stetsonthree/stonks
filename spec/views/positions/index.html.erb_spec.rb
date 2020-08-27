require 'rails_helper'

RSpec.describe "positions/index", type: :view do
  before(:each) do
    assign(:positions, [
      Position.create!(
        cost: 2,
        quantity: "9.99",
        notes: "MyText",
        status: false,
        portfolio: nil,
        stock: nil
      ),
      Position.create!(
        cost: 2,
        quantity: "9.99",
        notes: "MyText",
        status: false,
        portfolio: nil,
        stock: nil
      )
    ])
  end

  it "renders a list of positions" do
    render
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
