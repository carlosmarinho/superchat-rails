class HomeController < ApplicationController
  def index
    @conversations = User.get_conversations(current_user.id)
    puts "conversation ", @conversations
  end
end
