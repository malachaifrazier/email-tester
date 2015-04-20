require 'rails_helper'

RSpec.describe RecipientListsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # RecipientList. As you add validations to RecipientList, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # RecipientListsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all recipient_lists as @recipient_lists" do
      recipient_list = RecipientList.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:recipient_lists)).to eq([recipient_list])
    end
  end

  describe "GET show" do
    it "assigns the requested recipient_list as @recipient_list" do
      recipient_list = RecipientList.create! valid_attributes
      get :show, {:id => recipient_list.to_param}, valid_session
      expect(assigns(:recipient_list)).to eq(recipient_list)
    end
  end

  describe "GET new" do
    it "assigns a new recipient_list as @recipient_list" do
      get :new, {}, valid_session
      expect(assigns(:recipient_list)).to be_a_new(RecipientList)
    end
  end

  describe "GET edit" do
    it "assigns the requested recipient_list as @recipient_list" do
      recipient_list = RecipientList.create! valid_attributes
      get :edit, {:id => recipient_list.to_param}, valid_session
      expect(assigns(:recipient_list)).to eq(recipient_list)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new RecipientList" do
        expect {
          post :create, {:recipient_list => valid_attributes}, valid_session
        }.to change(RecipientList, :count).by(1)
      end

      it "assigns a newly created recipient_list as @recipient_list" do
        post :create, {:recipient_list => valid_attributes}, valid_session
        expect(assigns(:recipient_list)).to be_a(RecipientList)
        expect(assigns(:recipient_list)).to be_persisted
      end

      it "redirects to the created recipient_list" do
        post :create, {:recipient_list => valid_attributes}, valid_session
        expect(response).to redirect_to(RecipientList.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved recipient_list as @recipient_list" do
        post :create, {:recipient_list => invalid_attributes}, valid_session
        expect(assigns(:recipient_list)).to be_a_new(RecipientList)
      end

      it "re-renders the 'new' template" do
        post :create, {:recipient_list => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested recipient_list" do
        recipient_list = RecipientList.create! valid_attributes
        put :update, {:id => recipient_list.to_param, :recipient_list => new_attributes}, valid_session
        recipient_list.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested recipient_list as @recipient_list" do
        recipient_list = RecipientList.create! valid_attributes
        put :update, {:id => recipient_list.to_param, :recipient_list => valid_attributes}, valid_session
        expect(assigns(:recipient_list)).to eq(recipient_list)
      end

      it "redirects to the recipient_list" do
        recipient_list = RecipientList.create! valid_attributes
        put :update, {:id => recipient_list.to_param, :recipient_list => valid_attributes}, valid_session
        expect(response).to redirect_to(recipient_list)
      end
    end

    describe "with invalid params" do
      it "assigns the recipient_list as @recipient_list" do
        recipient_list = RecipientList.create! valid_attributes
        put :update, {:id => recipient_list.to_param, :recipient_list => invalid_attributes}, valid_session
        expect(assigns(:recipient_list)).to eq(recipient_list)
      end

      it "re-renders the 'edit' template" do
        recipient_list = RecipientList.create! valid_attributes
        put :update, {:id => recipient_list.to_param, :recipient_list => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested recipient_list" do
      recipient_list = RecipientList.create! valid_attributes
      expect {
        delete :destroy, {:id => recipient_list.to_param}, valid_session
      }.to change(RecipientList, :count).by(-1)
    end

    it "redirects to the recipient_lists list" do
      recipient_list = RecipientList.create! valid_attributes
      delete :destroy, {:id => recipient_list.to_param}, valid_session
      expect(response).to redirect_to(recipient_lists_url)
    end
  end

end
