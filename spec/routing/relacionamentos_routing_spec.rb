require "spec_helper"

describe RelacionamentosController do
  describe "routing" do

    it "routes to #index" do
      get("/relacionamentos").should route_to("relacionamentos#index")
    end

    it "routes to #new" do
      get("/relacionamentos/new").should route_to("relacionamentos#new")
    end

    it "routes to #show" do
      get("/relacionamentos/1").should route_to("relacionamentos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/relacionamentos/1/edit").should route_to("relacionamentos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/relacionamentos").should route_to("relacionamentos#create")
    end

    it "routes to #update" do
      put("/relacionamentos/1").should route_to("relacionamentos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/relacionamentos/1").should route_to("relacionamentos#destroy", :id => "1")
    end

  end
end
