class AddQuestionIdToVotes < ActiveRecord::Migration[7.0]
  def change
    add_column :votes, :question_id, :integer
  end
end
