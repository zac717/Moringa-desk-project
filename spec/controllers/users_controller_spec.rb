require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "POST #create" do
    context "with valid attributes" do
      let(:user_params) { attributes_for(:user) }

      it "creates a new user" do
        expect {
          post :create, params: user_params
        }.to change(User, :count).by(1)
      end

      it "returns a 201 Created status code" do
        post :create, params: user_params
        expect(response).to have_http_status(:created)
      end

      it "assigns the new user to @user" do
        post :create, params: user_params
        expect(assigns(:user)).to be_a(User)
        expect(assigns(:user)).to be_persisted
      end
    end

    context "with invalid attributes" do
      let(:user_params) { attributes_for(:user, username: '') }

      it "does not create a new user" do
        expect {
          post :create, params: user_params
        }.not_to change(User, :count)
      end

      it "returns a 422 Unprocessable Entity status code" do
        post :create, params: user_params
        expect(response).to have_http_status(:unprocessable_entity)
      end

      it "returns error messages in the response body" do
        post :create, params: user_params
        expect(JSON.parse(response.body)["errors"]).to include("Username can't be blank")
      end
    end
  end

  describe "PUT #update" do
    let(:user) { create(:user) }

    context "when authenticated as the user" do
      before { sign_in(user) }

      context "with valid attributes" do
        let(:updated_params) { attributes_for(:user, username: "new_username") }

        it "updates the user" do
          put :update, params: { id: user.id, user: updated_params }
          expect(user.reload.username).to eq(updated_params[:username])
        end

        it "returns a success status code" do
          put :update, params: { id: user.id, user: updated_params }
          expect(response).to have_http_status(:success)
        end

        it "returns the updated user in the response body" do
          put :update, params: { id: user.id, user: updated_params }
          expect(JSON.parse(response.body)["data"]["username"]).to eq(updated_params[:username])
        end
      end

      context "with invalid attributes" do
        let(:updated_params) { attributes_for(:user, username: '') }

        it "does not update the user" do
          put :update, params: { id: user.id, user: updated_params }
          expect(user.reload.username).not_to eq(updated_params[:username])
        end

        it "returns a 422 Unprocessable Entity status code" do
          put :update, params: { id: user.id, user: updated_params }
          expect(response).to have_http_status(:unprocessable_entity)
        end

        it "returns error messages in the response body" do
          put :update, params: { id: user.id, user: updated_params }
          expect(JSON.parse(response.body)["errors"]).to include("Username can't be blank")
        end
      end
    end

    context "when not authenticated" do
      it "returns a 401 Unauthorized status code" do
        put :update, params: { id: user.id, user: {
            username: "new_username" } }
            expect(response).to have_http_status(:unauthorized)
          end
    
          it "does not update the user" do
            expect {
              put :update, params: { id: user.id, user: { username: "new_username" } }
            }.not_to change { user.reload.username }
          end
        end
      end
    
      describe "DELETE #destroy" do
        let!(:user) { create(:user) }
    
        context "when authenticated as the user" do
          before { sign_in(user) }
    
          it "deletes the user" do
            expect {
              delete :destroy, params: { id: user.id }
            }.to change(User, :count).by(-1)
          end
    
          it "returns a success status code" do
            delete :destroy, params: { id: user.id }
            expect(response).to have_http_status(:success)
          end
    
          it "returns the deleted user in the response body" do
            delete :destroy, params: { id: user.id }
            expect(JSON.parse(response.body)["data"]["id"]).to eq(user.id)
          end
        end
    
        context "when not authenticated" do
          it "returns a 401 Unauthorized status code" do
            delete :destroy, params: { id: user.id }
            expect(response).to have_http_status(:unauthorized)
          end
    
          it "does not delete the user" do
            expect {
              delete :destroy, params: { id: user.id }
            }.not_to change(User, :count)
          end
        end
      end
    
      describe "GET #show" do
        let(:user) { create(:user) }
    
        context "when authenticated as the user" do
          before { sign_in(user) }
    
          it "returns a success status code" do
            get :show
            expect(response).to have_http_status(:success)
          end
    
          it "returns the current user in the response body" do
            get :show
            expect(JSON.parse(response.body)["username"]).to eq(user.username)
          end
        end
    
        context "when not authenticated" do
          it "returns a 401 Unauthorized status code" do
            get :show
            expect(response).to have_http_status(:unauthorized)
          end
        end
      end
    
      describe "GET #index" do
        let!(:users) { create_list(:user, 3) }
    
        it "returns a success status code" do
          get :index
          expect(response).to have_http_status(:success)
        end
    
        it "returns all users in the response body" do
          get :index
          expect(JSON.parse(response.body).count).to eq(3)
        end
      end
    end
    
