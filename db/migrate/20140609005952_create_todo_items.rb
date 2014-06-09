class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :name
      t.string :description
      t.boolean :is_done
      t.references :todo_list, index: true
    end
  end
end
