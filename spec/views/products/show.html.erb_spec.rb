require 'rails_helper'

RSpec.describe "products/show", type: :view do
  before(:each) do
    @product = assign(:product, Product.create!(
      :label => "Label",
      :description => "Description",
      :photo => "Photo",
      :sizes => "Sizes",
      :prices => "Prices",
      :ordering => 2,
      :language => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Photo/)
    expect(rendered).to match(/Sizes/)
    expect(rendered).to match(/Prices/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(//)
  end
end
