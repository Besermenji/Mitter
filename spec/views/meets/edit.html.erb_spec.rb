require 'rails_helper'

RSpec.describe "meets/edit", type: :view do
  before(:each) do
    @meet = assign(:meet, Meet.create!(
      :content => "MyText",
      :token => "MyString"
    ))
  end

  it "renders the edit meet form" do
    render

    assert_select "form[action=?][method=?]", meet_path(@meet), "post" do

      assert_select "textarea#meet_content[name=?]", "meet[content]"

      assert_select "input#meet_token[name=?]", "meet[token]"
    end
  end
end
