class MessagesController < ApplicationController
  before_action :find_conversation

  def index
    @messages = @conversation.messages
    if @messages.length > 20
      @over_ten = true
      @messages = @messages[-20..-1]
    end
    if params[:m]
      @over_ten = false
      @messages = @conversation.messages
    end
    @message = @conversation.message.new
  end

  def new
    @message = @conversation.messages.new
  end

  def create
    @message = conversation.messages.new(message_params)
    if @message.save
      redirect_to conversation_messages_path(@conversation)
    end
  end

  private

  def message_params
    params.require(:message).oermit(:body, :user_id)
  end

  def find_conversation
    @conversation = Conversation.find(params[:conversation_id])
  end
end