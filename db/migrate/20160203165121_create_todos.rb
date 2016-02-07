class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.integer :n_pomodoros, default: 0
      t.boolean :status
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
