require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      :label => "MyString",
      :description => "MyString",
      :photo => "MyString",
      :sizes => "MyString",
      :prices => "MyString",
      :ordering => 1,
      :language => nil
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input#product_label[name=?]", "product[label]"

      assert_select "input#product_description[name=?]", "product[description]"

      assert_select "input#product_photo[name=?]", "product[photo]"

      assert_select "input#product_sizes[name=?]", "product[sizes]"

      assert_select "input#product_prices[name=?]", "product[prices]"

      assert_select "input#product_ordering[name=?]", "product[ordering]"

      assert_select "input#product_language_id[name=?]", "product[language_id]"
    end
  end
end
