class Target < ApplicationRecord
    belongs_to :targetable, polymorphic: true
  end
  