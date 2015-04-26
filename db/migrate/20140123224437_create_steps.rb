class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :mastery_id
      t.string :description
      t.timestamps, :null => true
    end
  end
end
