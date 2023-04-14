class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :question_tags
  has_many :tags, through: :question_tags

  validates :title, presence: true
  validates :description, presence: true
end
