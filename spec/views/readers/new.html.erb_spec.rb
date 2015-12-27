require 'rails_helper'

RSpec.describe "readers/new", type: :view do
  before(:each) do
    assign(:reader, Reader.new(
      :name => "MyString",
      :email => "MyString"
    ))
  end

  it "renders new reader form" do
    render

    assert_select "form[action=?][method=?]", readers_path, "post" do

      assert_select "input#reader_name[name=?]", "reader[name]"

      assert_select "input#reader_email[name=?]", "reader[email]"
    end
  end
end
