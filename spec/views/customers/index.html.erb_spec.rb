require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :status => "Status"
      ),
      stub_model(Customer,
        :first_name => "First Name",
        :last_name => "Last Name",
        :status => "Status"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
  end
end
