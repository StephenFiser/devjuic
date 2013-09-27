require 'spec_helper'

describe "experiments/show" do
  before(:each) do
    @experiment = assign(:experiment, stub_model(Experiment,
      :title => "Title",
      :description => "MyText",
      :index_link => "Index Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    rendered.should match(/MyText/)
    rendered.should match(/Index Link/)
  end
end
