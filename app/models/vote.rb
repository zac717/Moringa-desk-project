class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :answer

  validates :value, inclusion: { in: [-1, 1], message: "%{value} is not a valid vote value" }

end
