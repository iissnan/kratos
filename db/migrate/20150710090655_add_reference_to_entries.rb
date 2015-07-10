class AddReferenceToEntries < ActiveRecord::Migration
  def change
    add_reference :entries, :issue, index: true
  end
end
