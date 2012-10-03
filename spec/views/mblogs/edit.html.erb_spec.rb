require 'spec_helper'

describe "mblogs/edit" do
  before(:each) do
    @mblog = assign(:mblog, stub_model(Mblog))
  end

  it "renders the edit mblog form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mblogs_path(@mblog), :method => "post" do
    end
  end
end
