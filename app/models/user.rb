class User < ApplicationRecord
    has_secure_password
    has_many :questions
    has_many :answers
    has_many :votes
    has_many :notifications

    

    validates :username, {presence: true, uniqueness: true, length: { minimum: 3 }}
    validates :email, presence: true, uniqueness: true
#    validates :password_digest, presence: true, uniqueness: true
end
