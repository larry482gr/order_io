require 'rails_helper'

RSpec.describe "tables/index", type: :view do
  before(:each) do
    assign(:tables, [
      Table.create!(
        :label => "Label",
        :language => nil
      ),
      Table.create!(
        :label => "Label",
        :language => nil
      )
    ])
  end

  it "renders a list of tables" do
    render
    assert_select "tr>td", :text => "Label".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
