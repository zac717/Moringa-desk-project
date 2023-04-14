class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :votes

  validates :description, presence: true
end
