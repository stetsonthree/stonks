require 'rails_helper'

RSpec.describe "portfolios/index", type: :view do
  before(:each) do
    assign(:portfolios, [
      Portfolio.create!(
        name: "Name",
        user: nil
      ),
      Portfolio.create!(
        name: "Name",
        user: nil
      )
    ])
  end

  it "renders a list of portfolios" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
