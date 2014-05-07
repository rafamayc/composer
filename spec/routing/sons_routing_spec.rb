require "spec_helper"

describe SonsController do
  describe "routing" do

    it "routes to #index" do
      get("/sons").should route_to("sons#index")
    end

    it "routes to #new" do
      get("/sons/new").should route_to("sons#new")
    end

    it "routes to #show" do
      get("/sons/1").should route_to("sons#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sons/1/edit").should route_to("sons#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sons").should route_to("sons#create")
    end

    it "routes to #update" do
      put("/sons/1").should route_to("sons#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sons/1").should route_to("sons#destroy", :id => "1")
    end

  end
end
