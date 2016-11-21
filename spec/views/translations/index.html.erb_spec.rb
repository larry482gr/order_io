require 'rails_helper'

RSpec.describe "translations/index", type: :view do
  before(:each) do
    assign(:translations, [
      Translation.create!(
        :table_name => "Table Name",
        :locale => "Locale",
        :reference_id => 2,
        :fields => "MyText"
      ),
      Translation.create!(
        :table_name => "Table Name",
        :locale => "Locale",
        :reference_id => 2,
        :fields => "MyText"
      )
    ])
  end

  it "renders a list of translations" do
    render
    assert_select "tr>td", :text => "Table Name".to_s, :count => 2
    assert_select "tr>td", :text => "Locale".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
