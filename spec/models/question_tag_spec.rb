require 'rails_helper'
RSpec.describe QuestionTag, type: :model do
  it { should belong_to(:question) }
  it { should belong_to(:tag) }
end