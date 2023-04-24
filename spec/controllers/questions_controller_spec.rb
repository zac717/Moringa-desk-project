require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:question) { FactoryBot.create(:question) }

    it "returns http success" do
      get :show, params: { id: question.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    context "when the request is valid" do
      let(:valid_attributes) { { question: { title: "Test Question", description: "This is a test question." } } }

      it "creates a new question" do
        expect {
          post :create, params: valid_attributes
        }.to change(Question, :count).by(1)
      end

      it "returns http created" do
        post :create, params: valid_attributes
        expect(response).to have_http_status(:created)
      end
    end

    context "when the request is invalid" do
      let(:invalid_attributes) { { question: { title: "", description: "" } } }

      it "does not create a new question" do
        expect {
          post :create, params: invalid_attributes
        }.to_not change(Question, :count)
      end

      it "returns http unprocessable entity" do
        post :create, params: invalid_attributes
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end
  end

  describe "PUT #update" do
    let(:question) { FactoryBot.create(:question) }

    context "when the request is valid" do
      let(:valid_attributes) { { question: { title: "Updated Test Question" } } }

      it "updates the question" do
        put :update, params: { id: question.id }.merge(valid_attributes)
        question.reload
        expect(question.title).to eq "Updated Test Question"
      end

      it "redirects to the updated question" do
        put :update, params: { id: question.id }.merge(valid_attributes)
        expect(response).to redirect_to question
      end
    end

    context "when the request is invalid" do
      let(:invalid_attributes) { { question: { title: "" } } }

      it "does not update the question" do
        put :update, params: { id: question.id }.merge(invalid_attributes)
        question.reload
        expect(question.title).to_not eq ""
      end

      it "renders the edit template" do
        put :update, params: { id: question.id }.merge(invalid_attributes)
        expect(response).to render_template :edit
      end
    end
  end

  describe "DELETE #destroy" do
    let(:question) { FactoryBot.create(:question) }

    it "destroys the question" do
      expect {
        delete :destroy, params: { id: question.id }
      }.to change(Question, :count).by(-1)
    end

    it "redirects to the questions index" do
      delete :destroy, params: { id: question.id }
      expect(response).to redirect_to questions_url
    end
  end
end
