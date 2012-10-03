require 'spec_helper'

describe "entries/new" do
  before(:each) do
    assign(:entry, stub_model(Entry,
      :user_id => 1,
      :post => "MyString"
    ).as_new_record)
  end

  it "renders new entry form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => entries_path, :method => "post" do
      assert_select "input#entry_user_id", :name => "entry[user_id]"
      assert_select "input#entry_post", :name => "entry[post]"
    end
  end
end
