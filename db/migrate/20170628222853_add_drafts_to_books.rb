class AddDraftsToBooks < ActiveRecord::Migration
  def change
    add_column :books, :draft, :boolean
  end
end
