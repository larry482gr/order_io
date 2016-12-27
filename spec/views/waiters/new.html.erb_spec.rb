require 'rails_helper'

RSpec.describe "waiters/new", type: :view do
  before(:each) do
    assign(:waiter, Waiter.new(
      :name => "MyString",
      :pin => 1
    ))
  end

  it "renders new waiter form" do
    render

    assert_select "form[action=?][method=?]", waiters_path, "post" do

      assert_select "input#waiter_name[name=?]", "waiter[name]"

      assert_select "input#waiter_pin[name=?]", "waiter[pin]"
    end
  end
end
