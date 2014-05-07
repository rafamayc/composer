require "spec_helper"

describe TipoPagsController do
  describe "routing" do

    it "routes to #index" do
      get("/tipo_pags").should route_to("tipo_pags#index")
    end

    it "routes to #new" do
      get("/tipo_pags/new").should route_to("tipo_pags#new")
    end

    it "routes to #show" do
      get("/tipo_pags/1").should route_to("tipo_pags#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tipo_pags/1/edit").should route_to("tipo_pags#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tipo_pags").should route_to("tipo_pags#create")
    end

    it "routes to #update" do
      put("/tipo_pags/1").should route_to("tipo_pags#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tipo_pags/1").should route_to("tipo_pags#destroy", :id => "1")
    end

  end
end
