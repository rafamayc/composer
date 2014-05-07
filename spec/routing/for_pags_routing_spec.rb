require "spec_helper"

describe ForPagsController do
  describe "routing" do

    it "routes to #index" do
      get("/for_pags").should route_to("for_pags#index")
    end

    it "routes to #new" do
      get("/for_pags/new").should route_to("for_pags#new")
    end

    it "routes to #show" do
      get("/for_pags/1").should route_to("for_pags#show", :id => "1")
    end

    it "routes to #edit" do
      get("/for_pags/1/edit").should route_to("for_pags#edit", :id => "1")
    end

    it "routes to #create" do
      post("/for_pags").should route_to("for_pags#create")
    end

    it "routes to #update" do
      put("/for_pags/1").should route_to("for_pags#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/for_pags/1").should route_to("for_pags#destroy", :id => "1")
    end

  end
end
