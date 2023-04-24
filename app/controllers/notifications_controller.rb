class NotificationsController < ApplicationController
  before_action :authorize

  def index
    notifications = current_user.notifications.order(created_at: :desc)
    render json: notifications, status: :ok
  end

  def mark_as_read
    notification = current_user.notifications.find_by(id: params[:id])
    if notification.present? && !notification.read_at?
      notification.update(read_at: Time.now)
    end
    redirect_back(fallback_location: notifications_path)
  end

  def create
    notification = Notification.new(notification_params)
    if notification.save
      render json: notification, status: :created
    else
      render json: { error: notification.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def notification_params
    params.require(:notification).permit(:user_id, :type, :target_id, :target_type, :message)
  end
end
