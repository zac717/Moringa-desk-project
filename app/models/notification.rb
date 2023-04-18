class Notification < ApplicationRecord
  self.inheritance_column = :_type_disabled
  belongs_to :user
  belongs_to :target, polymorphic: true

  validates :type, presence: true
end
