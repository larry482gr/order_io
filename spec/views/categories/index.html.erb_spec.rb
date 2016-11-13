require 'rails_helper'

RSpec.describe "categories/index", type: :view do
  before(:each) do
    assign(:categories, [
      Category.create!(
        :label => "Label",
        :ordering => 2,
        :language => nil
      ),
      Category.create!(
        :label => "Label",
        :ordering => 2,
        :language => nil
      )
    ])
  end

  it "renders a list of categories" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
