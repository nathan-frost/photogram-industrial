class CreateFollowRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :follow_requests do |t|
      t.references :recipient, null: false, foreign_key: true
      t.references :sender, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
