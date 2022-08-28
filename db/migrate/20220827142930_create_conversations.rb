class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.string :user
      t.references :writer_id, index: true, foreign_key: { to_table: :users }
      t.references :listener_id, index: true, foreign_key: { to_table: :users }
      t.string :conversation
      t.datetime :time

      t.timestamps
    end
  end
end
