require "spec_helper"

describe TiposuariosController do
  describe "routing" do

    it "routes to #index" do
      get("/tiposuarios").should route_to("tiposuarios#index")
    end

    it "routes to #new" do
      get("/tiposuarios/new").should route_to("tiposuarios#new")
    end

    it "routes to #show" do
      get("/tiposuarios/1").should route_to("tiposuarios#show", :id => "1")
    end

    it "routes to #edit" do
      get("/tiposuarios/1/edit").should route_to("tiposuarios#edit", :id => "1")
    end

    it "routes to #create" do
      post("/tiposuarios").should route_to("tiposuarios#create")
    end

    it "routes to #update" do
      put("/tiposuarios/1").should route_to("tiposuarios#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/tiposuarios/1").should route_to("tiposuarios#destroy", :id => "1")
    end

  end
end
