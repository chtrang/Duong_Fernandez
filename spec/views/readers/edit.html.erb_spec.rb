require 'rails_helper'

RSpec.describe "readers/edit", type: :view do
  before(:each) do
    @reader = assign(:reader, Reader.create!(
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders the edit reader form" do
    render

    assert_select "form[action=?][method=?]", reader_path(@reader), "post" do

      assert_select "input#reader_name[name=?]", "reader[name]"

      assert_select "input#reader_email[name=?]", "reader[email]"
    end
  end
end
