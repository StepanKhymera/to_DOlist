class CreateTask < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :due
      t.string :progress
      t.text :info
      t.string :subject
    end

end
