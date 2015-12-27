require 'rails_helper'

RSpec.describe "readers/show", type: :view do
  before(:each) do
    @reader = assign(:reader, Reader.create!(
      :name => "Name",
      :email => "Email"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
  end
end
