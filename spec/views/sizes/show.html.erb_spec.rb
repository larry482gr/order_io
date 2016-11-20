require 'rails_helper'

RSpec.describe "sizes/show", type: :view do
  before(:each) do
    @size = assign(:size, Size.create!(
      :label => "Label",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Label/)
    expect(rendered).to match(/Description/)
  end
end
