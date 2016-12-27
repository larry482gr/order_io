require 'rails_helper'

RSpec.describe "waiters/index", type: :view do
  before(:each) do
    assign(:waiters, [
      Waiter.create!(
        :name => "Name",
        :pin => 2
      ),
      Waiter.create!(
        :name => "Name",
        :pin => 2
      )
    ])
  end

  it "renders a list of waiters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
