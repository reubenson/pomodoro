class CreatePomodoros < ActiveRecord::Migration
  def change
    create_table :pomodoros do |t|
      t.integer :todo_id
      t.timestamps null: false
    end
  end
end
