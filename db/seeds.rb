# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def introduction(userMain, user, conversation, my_rand)
  if my_rand == 1
    ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "Hello!", time: DateTime.new(2022,8,26,17,10) )
  else 
    ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "Hi!!!", time: DateTime.new(2022,8,26,17,10) )
  end
  ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "How are you doing?", time: DateTime.new(2022,8,26,17,11) )
  ConversationText.create!(writer_id: user.id, listener_id: userMain.id, conversation_id: conversation.id, conversation_text: "I'm good and you?", time: DateTime.new(2022,8,26,19,12) )

  if my_rand == 1
    ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "Just good", time: DateTime.new(2022,8,26,19,13) )
  elsif my_rand == 2
    ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "pretty good", time: DateTime.new(2022,8,26,19,14) )
  else
    ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "Not bad!", time: DateTime.new(2022,8,26,19,15) )
  end
end

def random_conversation_text(userMain, user, conversation, my_rand)
  ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "No, I have not thought about that. I better get some statistics from the Internet. I should not haveany problems since the Internet has all kinds of data.", time: DateTime.new(2022,8,27,19,13) )
  ConversationText.create!(writer_id: user.id, listener_id: userMain.id, conversation_id: conversation.id, conversation_text: "Pictures will keep your audience from being bored. in order for you to succeed, you need to keeptheminterested and involved.", time: DateTime.new(2022,8,28,10,33) )
  ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "You are absolutely right. I will take time to practice and to learn to relax and express myselfreally well. Wish me luck, Catherine!", time: DateTime.new(2022,8,28,14,22) )
end


User.create!(email: 'admin@gmail.com', password: '123456', name: 'Administrator', username: "admin", birthday: "05/05/1990", superadmin_role: true)
User.create!(email: 'jomar@email.com', password: '123456', name: 'Jomar', username: "jomar", birthday: "05/05/1990", superadmin_role: true)
User.create!(email: 'carlos@hotmail.com', password: '123456', name: 'Carlos Luiz', username: "carlosm", birthday: "24/02/1990", superadmin_role: true)
User.create!(email: 'eloah@gmail.com', password: '123456', name: 'Eloah Silva', username: "carlosm", birthday: "17/10/1986")
User.create!(email: 'cadu@gmail.com', password: '123456', name: 'Cadu Silva', username: "cadu", birthday: "18/12/2000")
User.create!(email: 'juca@gmail.com', password: '123456', name: 'Carlos Silva Pai', username: "juca", birthday: "18/02/1960")
User.create!(email: 'marli@gmail.com', password: '123456', name: 'Marli França', username: "marli", birthday: "12/12/1960")
User.create!(email: 'sueli@gmail.com', password: '123456', name: 'Sueli da Costa Silva', username: "sueli", birthday: "10/04/1956")
User.create!(email: 'bonnietorres@gmail.com', password: '123456', name: 'Bonnie Torres', username: "bonnietorres", birthday: "10/04/1956")
User.create!(email: 'evawalker@gmail.com', password: '123456', name: 'Eva Walker', username: "evawalker", birthday: "10/04/1956")
User.create!(email: 'johnpaul@gmail.com', password: '123456', name: 'John Paul', username: "johnpaul", birthday: "10/04/1956")
User.create!(email: 'tammymartinez@gmail.com', password: '123456', name: 'Tammy Martinez', username: "tammymartinez", birthday: "10/04/1956")

userMain = User.where("email=?", 'carlos@hotmail.com').first
users = User.where("email!=?", 'carlos@hotmail.com')

# creating Conversations
users.each { |user| 

  my_rand = rand (1..3)

  #Conversations for carlos@hotmail.com

  conversation = Conversation.create!(writer_id: userMain.id, listener_id: user.id, first: DateTime.new(2022,8,27,9,13), last: DateTime.new(2022,8,27,9,13) )

  introduction(userMain, user, conversation, my_rand)
  
  case user.email
    when 'jomar@email.com' then
      ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "I wanna know if you finish that job", time: DateTime.new(2022,8,27,9,13) )
      ConversationText.create!(writer_id: user.id, listener_id: userMain.id, conversation_id: conversation.id, conversation_text: "Sure thing, I was about to tell ya", time: DateTime.new(2022,8,27,10,25) )
    
    when 'eloah@gmail.com' then
      ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "And how is your mother? Did she got better?", time: DateTime.new(2022,8,26,19,05) )
      ConversationText.create!(writer_id: user.id, listener_id: userMain.id, conversation_id: conversation.id, conversation_text: "Yeah yeah, thanks god she is at home now", time: DateTime.new(2022,8,26,19,44) )
    

    when 'cadu@gmail.com' then
      ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "How was your school today?", time: DateTime.new(2022,8,26,19,19) )
      ConversationText.create!(writer_id: user.id, listener_id: userMain.id, conversation_id: conversation.id, conversation_text: "I studied a lot", time: DateTime.new(2022,8,27,12,12) )
    

    when 'marli@gmail.com' then
      ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "Did you got better?", time: DateTime.new(2022,8,27,22,13) )
      ConversationText.create!(writer_id: user.id, listener_id: userMain.id, conversation_id: conversation.id, conversation_text: "Now I'm much better, that days on hospital was horrible!", time: DateTime.new(2022,8,28,8,15) )
    

    when 'sueli@gmail.com' then
      ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "Hey mom, i just wanna know if you are coming here today", time: DateTime.new(2022,8,28,19,13) )
      ConversationText.create!(writer_id: user.id, listener_id: userMain.id, conversation_id: conversation.id, conversation_text: "Today i can't, but i can go tomorrow!", time: DateTime.new(2022,8,29,18,14) )
    

    when 'juca@gmail.com' then
      ConversationText.create!(writer_id: userMain.id, listener_id: user.id, conversation_id: conversation.id, conversation_text: "Hey dad, are you working today", time: DateTime.new(2022,8,26,19,13) )
      ConversationText.create!(writer_id: user.id, listener_id: userMain.id, conversation_id: conversation.id, conversation_text: "Yes, i'm not free today, but we can talk tomorrow!", time: DateTime.new(2022,8,26,19,13) )

    else 
      random_conversation_text(userMain, user, conversation, my_rand)

  end


  #Creating ConversationTexts for each other users
  users.each { |user2| 
    if(user2.email != user.email) 
      conversation2 = Conversation.create!(writer_id: user.id, listener_id: user2.id, first: DateTime.new(2022,8,27,9,13), last: DateTime.new(2022,8,27,9,13) )

      introduction(user, user2, conversation2, my_rand)
      
      random_conversation_text(user, user2, conversation2, my_rand)
    end
  }
  

}