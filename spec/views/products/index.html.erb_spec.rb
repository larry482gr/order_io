require 'rails_helper'

RSpec.describe "products/index", type: :view do
  before(:each) do
    assign(:products, [
      Product.create!(
        :label => "Label",
        :description => "Description",
        :photo => "Photo",
        :sizes => "Sizes",
        :prices => "Prices",
        :ordering => 2,
        :language => nil
      ),
      Product.create!(
        :label => "Label",
        :description => "Description",
        :photo => "Photo",
        :sizes => "Sizes",
        :prices => "Prices",
        :ordering => 2,
        :language => nil
      )
    ])
  end

  it "renders a list of products" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Photo".to_s, :count => 2
    assert_select "tr>td", :text => "Sizes".to_s, :count => 2
    assert_select "tr>td", :text => "Prices".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
