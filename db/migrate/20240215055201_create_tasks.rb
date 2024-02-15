class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.datetime :pending_date
      t.boolean :completed
      t.boolean :active

      t.timestamps
    end
  end
end
