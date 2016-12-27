require 'rails_helper'

RSpec.describe "waiters/show", type: :view do
  before(:each) do
    @waiter = assign(:waiter, Waiter.create!(
      :name => "Name",
      :pin => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
