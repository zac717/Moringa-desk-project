require 'rails_helper'

RSpec.describe AnswersController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    let(:user) { create(:user) }
    let(:question) { create(:question) }

    context 'with valid params' do
      let(:answer_params) { { description: 'Test answer', question_id: question.id } }

      before { sign_in user }

      it 'creates a new answer' do
        expect {
          post :create, params: { answer: answer_params }
        }.to change(Answer, :count).by(1)
      end

      it 'returns a successful response' do
        post :create, params: { answer: answer_params }
        expect(response).to be_successful
      end
    end

    context 'with invalid params' do
      let(:answer_params) { { description: '', question_id: question.id } }

      before { sign_in user }

      it 'does not create a new answer' do
        expect {
          post :create, params: { answer: answer_params }
        }.not_to change(Answer, :count)
      end

      it 'returns an unprocessable entity status' do
        post :create, params: { answer: answer_params }
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'returns errors in JSON response' do
        post :create, params: { answer: answer_params }
        expect(JSON.parse(response.body)['errors']).to be_present
      end
    end

    context 'when not signed in' do
      let(:answer_params) { { description: 'Test answer', question_id: question.id } }

      it 'redirects to sign in page' do
        post :create, params: { answer: answer_params }
        expect(response).to redirect_to(new_user_session_path)
      end

      it 'does not create a new answer' do
        expect {
          post :create, params: { answer: answer_params }
        }.not_to change(Answer, :count)
      end
    end
  end
end
