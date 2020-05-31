class AddColomnDue < ActiveRecord::Migration[6.0]
  def change
      add_column :tasks, :due, :string
  end
end
