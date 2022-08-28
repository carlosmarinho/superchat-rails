class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :user
      t.references :writer_id, null: false, foreign_key: true
      t.references :listener_id, null: false, foreign_key: true
      t.string :conversation
      t.datetime :time

      t.timestamps
    end
  end
end
