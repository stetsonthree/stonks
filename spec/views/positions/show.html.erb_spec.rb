require 'rails_helper'

RSpec.describe "positions/show", type: :view do
  before(:each) do
    @position = assign(:position, Position.create!(
      cost: 2,
      quantity: "9.99",
      notes: "MyText",
      status: false,
      portfolio: nil,
      stock: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
