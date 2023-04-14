class User < ApplicationRecord

    has_many :questions
    has_many :answers
    has_many :votes
    has_many :notifications

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true

end
