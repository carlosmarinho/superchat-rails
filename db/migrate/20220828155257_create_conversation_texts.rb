class CreateConversationTexts < ActiveRecord::Migration[6.1]
  def change
    create_table :conversation_texts do |t|
      t.references :conversation, null: false, foreign_key: true
      t.references :writer, index: true, foreign_key: { to_table: :users }
      t.references :listener, index: true, foreign_key: { to_table: :users }
      t.string :conversation_text
      t.datetime :time

      t.timestamps
    end
  end
end
