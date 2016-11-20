require 'rails_helper'

RSpec.describe "sizes/index", type: :view do
  before(:each) do
    assign(:sizes, [
      Size.create!(
        :label => "Label",
        :description => "Description"
      ),
      Size.create!(
        :label => "Label",
        :description => "Description"
      )
    ])
  end

  it "renders a list of sizes" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
