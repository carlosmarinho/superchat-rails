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
    # puts "current_user: ", User.current_scope
    Conversation.where("writer_id = ?", user_id)
  end

end
