require 'rails_helper'

RSpec.describe "tables/edit", type: :view do
  before(:each) do
    @table = assign(:table, Table.create!(
      :label => "MyString",
      :language => nil
    ))
  end

  it "renders the edit table form" do
    render

    assert_select "form[action=?][method=?]", table_path(@table), "post" do

      assert_select "input#table_label[name=?]", "table[label]"

      assert_select "input#table_language_id[name=?]", "table[language_id]"
    end
  end
end
