class Conversation < ApplicationRecord
  belongs_to :writer, class_name: 'User', foreign_key: 'writer_id', required: true
  belongs_to :listener, class_name: 'User', foreign_key: 'listener_id', required: true
  has_many :conversation_text

end
