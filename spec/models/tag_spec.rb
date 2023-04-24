require 'rails_helper'
RSpec.describe Tag, type: :model do
  it { should have_many(:question_tags) }
  it { should have_many(:questions).through(:question_tags) }
  it { should validate_presence_of(:name) }
end