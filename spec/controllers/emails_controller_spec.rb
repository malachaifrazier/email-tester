require 'rails_helper'

RSpec.describe EmailsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Email. As you add validations to Email, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EmailsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all emails as @emails" do
      email = Email.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:emails)).to eq([email])
    end
  end

  describe "GET show" do
    it "assigns the requested email as @email" do
      email = Email.create! valid_attributes
      get :show, {:id => email.to_param}, valid_session
      expect(assigns(:email)).to eq(email)
    end
  end

  describe "GET new" do
    it "assigns a new email as @email" do
      get :new, {}, valid_session
      expect(assigns(:email)).to be_a_new(Email)
    end
  end

  describe "GET edit" do
    it "assigns the requested email as @email" do
      email = Email.create! valid_attributes
      get :edit, {:id => email.to_param}, valid_session
      expect(assigns(:email)).to eq(email)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Email" do
        expect {
          post :create, {:email => valid_attributes}, valid_session
        }.to change(Email, :count).by(1)
      end

      it "assigns a newly created email as @email" do
        post :create, {:email => valid_attributes}, valid_session
        expect(assigns(:email)).to be_a(Email)
        expect(assigns(:email)).to be_persisted
      end

      it "redirects to the created email" do
        post :create, {:email => valid_attributes}, valid_session
        expect(response).to redirect_to(Email.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved email as @email" do
        post :create, {:email => invalid_attributes}, valid_session
        expect(assigns(:email)).to be_a_new(Email)
      end

      it "re-renders the 'new' template" do
        post :create, {:email => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested email" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => new_attributes}, valid_session
        email.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested email as @email" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => valid_attributes}, valid_session
        expect(assigns(:email)).to eq(email)
      end

      it "redirects to the email" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => valid_attributes}, valid_session
        expect(response).to redirect_to(email)
      end
    end

    describe "with invalid params" do
      it "assigns the email as @email" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => invalid_attributes}, valid_session
        expect(assigns(:email)).to eq(email)
      end

      it "re-renders the 'edit' template" do
        email = Email.create! valid_attributes
        put :update, {:id => email.to_param, :email => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested email" do
      email = Email.create! valid_attributes
      expect {
        delete :destroy, {:id => email.to_param}, valid_session
      }.to change(Email, :count).by(-1)
    end

    it "redirects to the emails list" do
      email = Email.create! valid_attributes
      delete :destroy, {:id => email.to_param}, valid_session
      expect(response).to redirect_to(emails_url)
    end
  end

end
