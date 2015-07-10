class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.column :title, :string
      t.column :url, :string
      t.column :description, :text
      t.timestamps null: false
    end
  end
end
