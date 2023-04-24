require 'rails_helper'

RSpec.describe VotesController, type: :controller do
  describe 'POST #create' do
    let(:user) { create(:user) }
    let(:answer) { create(:answer) }

    context 'when vote is valid' do
      before do
        sign_in(user)
        post :create, params: { answer_id: answer.id, value: 1 }
      end

      it 'returns http created' do
        expect(response).to have_http_status(:created)
      end

      it 'creates a new vote' do
        expect(answer.votes.count).to eq(1)
      end

      it 'associates the vote with the correct answer and user' do
        vote = answer.votes.last
        expect(vote.answer).to eq(answer)
        expect(vote.user).to eq(user)
      end
    end

    context 'when vote is invalid' do
      before do
        sign_in(user)
        post :create, params: { answer_id: answer.id, value: 5 }
      end

      it 'returns http unprocessable entity' do
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it 'does not create a new vote' do
        expect(answer.votes.count).to eq(0)
      end

      it 'returns errors in JSON format' do
        expect(response.content_type).to eq('application/json')
        expect(response.body).to include('Value is not included in the list')
      end
    end

    context 'when user is not authenticated' do
      before do
        post :create, params: { answer_id: answer.id, value: 1 }
      end

      it 'returns http unauthorized' do
        expect(response).to have_http_status(:unauthorized)
      end

      it 'does not create a new vote' do
        expect(answer.votes.count).to eq(0)
      end
    end
  end
end
