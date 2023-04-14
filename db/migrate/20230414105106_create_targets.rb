class CreateTargets < ActiveRecord::Migration[7.0]
  def change
    create_table :targets do |t|
      t.references :targetable, polymorphic: true
      t.timestamps
    end
  end
end
