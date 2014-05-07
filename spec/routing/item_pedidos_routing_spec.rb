require "spec_helper"

describe ItemPedidosController do
  describe "routing" do

    it "routes to #index" do
      get("/item_pedidos").should route_to("item_pedidos#index")
    end

    it "routes to #new" do
      get("/item_pedidos/new").should route_to("item_pedidos#new")
    end

    it "routes to #show" do
      get("/item_pedidos/1").should route_to("item_pedidos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/item_pedidos/1/edit").should route_to("item_pedidos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/item_pedidos").should route_to("item_pedidos#create")
    end

    it "routes to #update" do
      put("/item_pedidos/1").should route_to("item_pedidos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/item_pedidos/1").should route_to("item_pedidos#destroy", :id => "1")
    end

  end
end
