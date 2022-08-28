class Conversation < ApplicationRecord
  belongs_to :writer_id
  belongs_to :listener_id
end
