require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FathersController do

  # This should return the minimal set of attributes required to create a valid
  # Father. As you add validations to Father, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "name" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FathersController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all fathers as @fathers" do
      father = Father.create! valid_attributes
      get :index, {}, valid_session
      assigns(:fathers).should eq([father])
    end
  end

  describe "GET show" do
    it "assigns the requested father as @father" do
      father = Father.create! valid_attributes
      get :show, {:id => father.to_param}, valid_session
      assigns(:father).should eq(father)
    end
  end

  describe "GET new" do
    it "assigns a new father as @father" do
      get :new, {}, valid_session
      assigns(:father).should be_a_new(Father)
    end
  end

  describe "GET edit" do
    it "assigns the requested father as @father" do
      father = Father.create! valid_attributes
      get :edit, {:id => father.to_param}, valid_session
      assigns(:father).should eq(father)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Father" do
        expect {
          post :create, {:father => valid_attributes}, valid_session
        }.to change(Father, :count).by(1)
      end

      it "assigns a newly created father as @father" do
        post :create, {:father => valid_attributes}, valid_session
        assigns(:father).should be_a(Father)
        assigns(:father).should be_persisted
      end

      it "redirects to the created father" do
        post :create, {:father => valid_attributes}, valid_session
        response.should redirect_to(Father.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved father as @father" do
        # Trigger the behavior that occurs when invalid params are submitted
        Father.any_instance.stub(:save).and_return(false)
        post :create, {:father => { "name" => "invalid value" }}, valid_session
        assigns(:father).should be_a_new(Father)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Father.any_instance.stub(:save).and_return(false)
        post :create, {:father => { "name" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested father" do
        father = Father.create! valid_attributes
        # Assuming there are no other fathers in the database, this
        # specifies that the Father created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Father.any_instance.should_receive(:update).with({ "name" => "MyString" })
        put :update, {:id => father.to_param, :father => { "name" => "MyString" }}, valid_session
      end

      it "assigns the requested father as @father" do
        father = Father.create! valid_attributes
        put :update, {:id => father.to_param, :father => valid_attributes}, valid_session
        assigns(:father).should eq(father)
      end

      it "redirects to the father" do
        father = Father.create! valid_attributes
        put :update, {:id => father.to_param, :father => valid_attributes}, valid_session
        response.should redirect_to(father)
      end
    end

    describe "with invalid params" do
      it "assigns the father as @father" do
        father = Father.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Father.any_instance.stub(:save).and_return(false)
        put :update, {:id => father.to_param, :father => { "name" => "invalid value" }}, valid_session
        assigns(:father).should eq(father)
      end

      it "re-renders the 'edit' template" do
        father = Father.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Father.any_instance.stub(:save).and_return(false)
        put :update, {:id => father.to_param, :father => { "name" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested father" do
      father = Father.create! valid_attributes
      expect {
        delete :destroy, {:id => father.to_param}, valid_session
      }.to change(Father, :count).by(-1)
    end

    it "redirects to the fathers list" do
      father = Father.create! valid_attributes
      delete :destroy, {:id => father.to_param}, valid_session
      response.should redirect_to(fathers_url)
    end
  end

end
