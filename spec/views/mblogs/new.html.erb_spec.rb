require 'spec_helper'

describe "mblogs/new" do
  before(:each) do
    assign(:mblog, stub_model(Mblog).as_new_record)
  end

  it "renders new mblog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mblogs_path, :method => "post" do
    end
  end
end
