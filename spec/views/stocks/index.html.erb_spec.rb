require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        name: "Name",
        symbol: "Symbol"
      ),
      Stock.create!(
        name: "Name",
        symbol: "Symbol"
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Symbol".to_s, count: 2
  end
end
