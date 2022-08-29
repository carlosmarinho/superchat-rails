class HomeController < ApplicationController
  def index
    @conversations = User.get_conversations(current_user.id)
    @conversations_selected = @conversations.first.conversation_text
    puts "\n\n*********************\n\nconversation ", @conversations_selected, "######################################\n\n\n"
  end
end
