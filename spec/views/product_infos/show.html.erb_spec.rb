require 'rails_helper'

RSpec.describe "product_infos/show", type: :view do
  before(:each) do
    @product_info = assign(:product_info, ProductInfo.create!(
      :label => "Label",
      :language => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(//)
  end
end
