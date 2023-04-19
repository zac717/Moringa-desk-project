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
  end
  
  
  
  
  
  