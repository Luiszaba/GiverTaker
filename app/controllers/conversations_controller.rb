class ConversationsController < ApplicationController

  def index
    @users = User.all
    @conversations = Conversation.all
  end

  def create
    if Conversations.between(params[:sender_id]. params[:recipient_id])
  end



end