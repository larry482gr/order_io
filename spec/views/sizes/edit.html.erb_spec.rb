require 'rails_helper'

RSpec.describe "sizes/edit", type: :view do
  before(:each) do
    @size = assign(:size, Size.create!(
      :label => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit size form" do
    render

    assert_select "form[action=?][method=?]", size_path(@size), "post" do

      assert_select "input#size_label[name=?]", "size[label]"

      assert_select "input#size_description[name=?]", "size[description]"
    end
  end
end
