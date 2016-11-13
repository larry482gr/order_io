require 'rails_helper'

RSpec.describe "product_infos/new", type: :view do
  before(:each) do
    assign(:product_info, ProductInfo.new(
      :label => "MyString",
      :language => nil
    ))
  end

  it "renders new product_info form" do
    render

    assert_select "form[action=?][method=?]", product_infos_path, "post" do

      assert_select "input#product_info_label[name=?]", "product_info[label]"

      assert_select "input#product_info_language_id[name=?]", "product_info[language_id]"
    end
  end
end
