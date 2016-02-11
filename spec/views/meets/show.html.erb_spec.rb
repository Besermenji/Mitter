require 'rails_helper'

RSpec.describe "meets/show", type: :view do
  before(:each) do
    @meet = assign(:meet, Meet.create!(
      :content => "MyText",
      :token => "Token"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Token/)
  end
end
