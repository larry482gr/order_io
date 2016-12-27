require 'rails_helper'

RSpec.describe "waiters/edit", type: :view do
  before(:each) do
    @waiter = assign(:waiter, Waiter.create!(
      :name => "MyString",
      :pin => 1
    ))
  end

  it "renders the edit waiter form" do
    render

    assert_select "form[action=?][method=?]", waiter_path(@waiter), "post" do

      assert_select "input#waiter_name[name=?]", "waiter[name]"

      assert_select "input#waiter_pin[name=?]", "waiter[pin]"
    end
  end
end
