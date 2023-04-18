require 'rails_helper'

RSpec.describe NotificationsController, type: :controller do
  describe "GET #index" do
    context "when user is authenticated" do
      let(:user) { create(:user) }
      before do
        sign_in user
        get :index
      end

      it "returns a successful response" do
        expect(response).to have_http_status(:ok)
      end

      it "assigns current user's notifications to @notifications" do
        expect(assigns(:notifications)).to eq(user.notifications.order(created_at: :desc))
      end

      it "renders the index template" do
        expect(response).to render_template(:index)
      end
    end

    context "when user is not authenticated" do
      before { get :index }

      it "redirects to sign in page" do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end

  describe "POST #mark_as_read" do
    let(:user) { create(:user) }
    let!(:notification) { create(:notification, user: user) }

    context "when user is authenticated and notification exists" do
      before do
        sign_in user
        post :mark_as_read, params: { id: notification.id }
      end

      it "marks the notification as read" do
        expect(notification.reload.read_at).not_to be_nil
      end

      it "redirects back to notifications index" do
        expect(response).to redirect_to(notifications_path)
      end
    end

    context "when user is authenticated and notification does not exist" do
      before do
        sign_in user
        post :mark_as_read, params: { id: 0 }
      end

      it "does not mark any notifications as read" do
        expect(notification.reload.read_at).to be_nil
      end

      it "redirects back to notifications index" do
        expect(response).to redirect_to(notifications_path)
      end
    end

    context "when user is not authenticated" do
      before { post :mark_as_read, params: { id: notification.id } }

      it "redirects to sign in page" do
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end
