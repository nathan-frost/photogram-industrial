class AddCascadeDeleteToComments < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :comments, :photos
    add_foreign_key :comments, :photos, on_delete: :cascade
  end
end
