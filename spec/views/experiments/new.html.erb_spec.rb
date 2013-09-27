require 'spec_helper'

describe "experiments/new" do
  before(:each) do
    assign(:experiment, stub_model(Experiment,
      :title => "MyString",
      :description => "MyText",
      :index_link => "MyString"
    ).as_new_record)
  end

  it "renders new experiment form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", experiments_path, "post" do
      assert_select "input#experiment_title[name=?]", "experiment[title]"
      assert_select "textarea#experiment_description[name=?]", "experiment[description]"
      assert_select "input#experiment_index_link[name=?]", "experiment[index_link]"
    end
  end
end
