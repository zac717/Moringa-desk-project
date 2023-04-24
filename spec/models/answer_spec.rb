# spec/models/answer_spec.rb
require 'rails_helper'
RSpec.describe Answer, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:question) }
  it { should have_many(:votes) }
  it { should have_many(:notifications).dependent(:destroy) }
  it { should validate_presence_of(:description) }
end
