require 'rails_helper'

RSpec.describe "tables/new", type: :view do
  before(:each) do
    assign(:table, Table.new(
      :label => "MyString",
      :language => nil
    ))
  end

  it "renders new table form" do
    render

    assert_select "form[action=?][method=?]", tables_path, "post" do

      assert_select "input#table_label[name=?]", "table[label]"

      assert_select "input#table_language_id[name=?]", "table[language_id]"
    end
  end
end
