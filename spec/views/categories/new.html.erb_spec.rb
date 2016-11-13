require 'rails_helper'

RSpec.describe "categories/new", type: :view do
  before(:each) do
    assign(:category, Category.new(
      :label => "MyString",
      :ordering => 1,
      :language => nil
    ))
  end

  it "renders new category form" do
    render

    assert_select "form[action=?][method=?]", categories_path, "post" do

      assert_select "input#category_label[name=?]", "category[label]"

      assert_select "input#category_ordering[name=?]", "category[ordering]"

      assert_select "input#category_language_id[name=?]", "category[language_id]"
    end
  end
end
