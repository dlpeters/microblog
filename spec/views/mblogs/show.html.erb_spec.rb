require 'spec_helper'

describe "mblogs/show" do
  before(:each) do
    @mblog = assign(:mblog, stub_model(Mblog))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
