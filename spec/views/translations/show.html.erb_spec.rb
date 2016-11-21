require 'rails_helper'

RSpec.describe "translations/show", type: :view do
  before(:each) do
    @translation = assign(:translation, Translation.create!(
      :table_name => "Table Name",
      :locale => "Locale",
      :reference_id => 2,
      :fields => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Table Name/)
    expect(rendered).to match(/Locale/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
  end
end
