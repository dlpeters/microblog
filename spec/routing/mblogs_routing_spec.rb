require "spec_helper"

describe MblogsController do
  describe "routing" do

    it "routes to #index" do
      get("/mblogs").should route_to("mblogs#index")
    end

    it "routes to #new" do
      get("/mblogs/new").should route_to("mblogs#new")
    end

    it "routes to #show" do
      get("/mblogs/1").should route_to("mblogs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/mblogs/1/edit").should route_to("mblogs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/mblogs").should route_to("mblogs#create")
    end

    it "routes to #update" do
      put("/mblogs/1").should route_to("mblogs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/mblogs/1").should route_to("mblogs#destroy", :id => "1")
    end

  end
end
