require 'rails_helper'

RSpec.describe "sizes/new", type: :view do
  before(:each) do
    assign(:size, Size.new(
      :label => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new size form" do
    render

    assert_select "form[action=?][method=?]", sizes_path, "post" do

      assert_select "input#size_label[name=?]", "size[label]"

      assert_select "input#size_description[name=?]", "size[description]"
    end
  end
end
