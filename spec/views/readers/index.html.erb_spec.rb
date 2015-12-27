require 'rails_helper'

RSpec.describe "readers/index", type: :view do
  before(:each) do
    assign(:readers, [
      Reader.create!(
        :name => "Name",
        :email => "Email"
      ),
      Reader.create!(
        :name => "Name",
        :email => "Email"
      )
    ])
  end

  it "renders a list of readers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
  end
end
