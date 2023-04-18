require 'rails_helper'

RSpec.describe QuestionTagsController, type: :controller do
  describe 'POST create' do
    let(:question) { create(:question) }

    context 'with valid parameters' do
      let(:params) { { question_id: question.id, name: 'tag1' } }

      it 'creates a new question tag' do
        expect {
          post :create, params: params
        }.to change(QuestionTag, :count).by(1)
      end

      it 'returns a JSON response with the new question tag' do
        post :create, params: params
        expect(response.content_type).to eq('application/json')
        expect(response).to have_http_status(:created)
        expect(response.body).to include(question.question_tags.last.id.to_s)
      end
    end

    context 'with invalid parameters' do
      let(:params) { { question_id: question.id } }

      it 'does not create a new question tag' do
        expect {
          post :create, params: params
        }.to_not change(QuestionTag, :count)
      end

      it 'returns a JSON response with an error message' do
        post :create, params: params
        expect(response.content_type).to eq('application/json')
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.body).to include('Failed to add tag to question')
      end
    end
  end

  describe 'DELETE destroy' do
    let(:question) { create(:question) }
    let(:tag) { create(:tag) }
    let!(:question_tag) { create(:question_tag, question: question, tag: tag) }

    it 'destroys the specified question tag' do
      expect {
        delete :destroy, params: { question_id: question.id, id: tag.id }
      }.to change(QuestionTag, :count).by(-1)
    end

    it 'returns a JSON response with the destroyed question tag' do
      delete :destroy, params: { question_id: question.id, id: tag.id }
      expect(response.content_type).to eq('application/json')
      expect(response).to have_http_status(:ok)
      expect(response.body).to include(question_tag.id.to_s)
    end

    it 'does not destroy the question tag if it does not exist' do
      expect {
        delete :destroy, params: { question_id: question.id, id: -1 }
      }.to_not change(QuestionTag, :count)
    end

    it 'returns a JSON response with an error message if the question tag does not exist' do
      delete :destroy, params: { question_id: question.id, id: -1 }
      expect(response.content_type).to eq('application/json')
      expect(response).to have_http_status(:unprocessable_entity)
      expect(response.body).to include('Failed to remove tag from question')
    end
  end
end
