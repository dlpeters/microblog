require 'spec_helper'

describe "mblogs/index" do
  before(:each) do
    assign(:mblogs, [
      stub_model(Mblog),
      stub_model(Mblog)
    ])
  end

  it "renders a list of mblogs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
