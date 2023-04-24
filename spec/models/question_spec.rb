require 'rails_helper'
RSpec.describe Question, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:answers) }
  it { should have_many(:question_tags) }
  it { should have_many(:tags).through(:question_tags) }
  it { should have_many(:notifications).dependent(:destroy) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
end
