require 'rails_helper'

RSpec.describe "meets/new", type: :view do
  before(:each) do
    assign(:meet, Meet.new(
      :content => "MyText",
      :token => "MyString"
    ))
  end

  it "renders new meet form" do
    render

    assert_select "form[action=?][method=?]", meets_path, "post" do

      assert_select "textarea#meet_content[name=?]", "meet[content]"

      assert_select "input#meet_token[name=?]", "meet[token]"
    end
  end
end
