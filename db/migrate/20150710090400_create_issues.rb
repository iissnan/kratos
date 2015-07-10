class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.column :title, :string
      t.column :description, :text
      t.timestamps null: false
    end
  end
end
