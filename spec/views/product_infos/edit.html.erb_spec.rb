require 'rails_helper'

RSpec.describe "product_infos/edit", type: :view do
  before(:each) do
    @product_info = assign(:product_info, ProductInfo.create!(
      :label => "MyString",
      :language => nil
    ))
  end

  it "renders the edit product_info form" do
    render

    assert_select "form[action=?][method=?]", product_info_path(@product_info), "post" do

      assert_select "input#product_info_label[name=?]", "product_info[label]"

      assert_select "input#product_info_language_id[name=?]", "product_info[language_id]"
    end
  end
end
