require 'rails_helper'

RSpec.describe "meets/index", type: :view do
  before(:each) do
    assign(:meets, [
      Meet.create!(
        :content => "MyText",
        :token => "Token"
      ),
      Meet.create!(
        :content => "MyText",
        :token => "Token"
      )
    ])
  end

  it "renders a list of meets" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Token".to_s, :count => 2
  end
end
