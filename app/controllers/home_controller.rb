class HomeController < ApplicationController
  def index
    @conversation_id = params[:id]
    @conversations = User.get_conversations(current_user.id)

    if(@conversation_id.nil?)
      @conversations_selected = @conversations.present? ? @conversations.first.conversation_text : []
    else 
      @conversations.each do |conversation| 
        if(conversation.id == params[:id].to_i)
          @conversations_selected = conversation.conversation_text
        end
      end
    end
  end

  def create_chat
    # chat = JSON.parse request.body.read
    chat = ConversationText.new(JSON.parse request.body.read)

      if chat.save
        render json: chat
      else
        render json: { :errors => chat.errors.full_messages }, status: 400
      end
  end
end
