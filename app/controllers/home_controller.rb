class HomeController < ApplicationController
  def index

    @conversation_id = params[:id];
    @conversations = User.get_conversations(current_user.id)

    if(@conversation_id.nil?)
      @conversations_selected = @conversations.first.conversation_text
    else 
      @conversations.each do |conversation| 
        if(conversation.id == params[:id].to_i)
          @conversations_selected = conversation.conversation_text
        end
      end
    end
    
  end
end
