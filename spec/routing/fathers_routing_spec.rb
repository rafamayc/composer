require "spec_helper"

describe FathersController do
  describe "routing" do

    it "routes to #index" do
      get("/fathers").should route_to("fathers#index")
    end

    it "routes to #new" do
      get("/fathers/new").should route_to("fathers#new")
    end

    it "routes to #show" do
      get("/fathers/1").should route_to("fathers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/fathers/1/edit").should route_to("fathers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/fathers").should route_to("fathers#create")
    end

    it "routes to #update" do
      put("/fathers/1").should route_to("fathers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/fathers/1").should route_to("fathers#destroy", :id => "1")
    end

  end
end
