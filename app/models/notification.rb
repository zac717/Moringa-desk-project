class Notification < ApplicationRecord
  self.inheritance_column = :_type_disabled
  belongs_to :user
  belongs_to :target, polymorphic: true

  # Add this line to create a message attribute
  attribute :message, :string

  scope :unread, -> { where(read_at: nil) }

  validates :type, presence: true
end
