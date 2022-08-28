class CreateConversations < ActiveRecord::Migration[6.1]
  def change
    create_table :conversations do |t|
      t.references :writer, index: true, foreign_key: { to_table: :users }
      t.references :listener, index: true, foreign_key: { to_table: :users }
      t.datetime :first
      t.datetime :last
      t.timestamps
    end
  end
end
