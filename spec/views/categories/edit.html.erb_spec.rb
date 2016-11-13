require 'rails_helper'

RSpec.describe "categories/edit", type: :view do
  before(:each) do
    @category = assign(:category, Category.create!(
      :label => "MyString",
      :ordering => 1,
      :language => nil
    ))
  end

  it "renders the edit category form" do
    render

    assert_select "form[action=?][method=?]", category_path(@category), "post" do

      assert_select "input#category_label[name=?]", "category[label]"

      assert_select "input#category_ordering[name=?]", "category[ordering]"

      assert_select "input#category_language_id[name=?]", "category[language_id]"
    end
  end
end
