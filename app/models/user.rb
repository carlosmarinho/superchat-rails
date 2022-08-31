class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  ##...Avatar Attachment...##
  has_one_attached :avatar

  ## Validations
     validates :avatar, file_size: { less_than_or_equal_to: 5.megabytes },
              file_content_type: { allow: ['image/jpeg', 'image/png', 'image/gif'] }
  
  def self.get_conversations(user_id)
    conversations = Conversation.where("writer_id = ?  ", user_id)
    listener_ids = conversations.pluck(:listener_id)
    
    conversations2 = Conversation.where("listener_id = ? and writer_id not in (?)", user_id, listener_ids)
      .select("id, writer_id as listener_id, listener_id as writer_id, created_at, updated_at")

    conversations + conversations2
  end

end
