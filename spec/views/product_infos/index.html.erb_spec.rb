require 'rails_helper'

RSpec.describe "product_infos/index", type: :view do
  before(:each) do
    assign(:product_infos, [
      ProductInfo.create!(
        :label => "Label",
        :language => nil
      ),
      ProductInfo.create!(
        :label => "Label",
        :language => nil
      )
    ])
  end

  it "renders a list of product_infos" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
