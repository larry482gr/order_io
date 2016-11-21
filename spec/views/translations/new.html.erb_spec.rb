require 'rails_helper'

RSpec.describe "translations/new", type: :view do
  before(:each) do
    assign(:translation, Translation.new(
      :table_name => "MyString",
      :locale => "MyString",
      :reference_id => 1,
      :fields => "MyText"
    ))
  end

  it "renders new translation form" do
    render

    assert_select "form[action=?][method=?]", translations_path, "post" do

      assert_select "input#translation_table_name[name=?]", "translation[table_name]"

      assert_select "input#translation_locale[name=?]", "translation[locale]"

      assert_select "input#translation_reference_id[name=?]", "translation[reference_id]"

      assert_select "textarea#translation_fields[name=?]", "translation[fields]"
    end
  end
end
