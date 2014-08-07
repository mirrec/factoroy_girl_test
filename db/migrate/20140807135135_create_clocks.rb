class CreateClocks < ActiveRecord::Migration
  def change
    create_table :clocks do |t|
      t.string :activity
      t.integer :task_id

      t.timestamps
    end
  end
end
