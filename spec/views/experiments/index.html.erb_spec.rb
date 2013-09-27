require 'spec_helper'

describe "experiments/index" do
  before(:each) do
    assign(:experiments, [
      stub_model(Experiment,
        :title => "Title",
        :description => "MyText",
        :index_link => "Index Link"
      ),
      stub_model(Experiment,
        :title => "Title",
        :description => "MyText",
        :index_link => "Index Link"
      )
    ])
  end

  it "renders a list of experiments" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Index Link".to_s, :count => 2
  end
end
