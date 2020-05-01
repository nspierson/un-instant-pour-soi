class MessagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    if @message.save
      first_last_name = @message.first_last_name
      phone = @message.phone
      email = @message.email
      object = @message.object
      city = @message.city
      content = @message.content
      OwnerMailer.message_received(first_last_name, phone, email, object, city, content).deliver_now
      redirect_to new_message_path
    else
      render 'new'
    end
  end

  def send_owner_message

  end

  private

  def message_params
    params.require(:message).permit(:first_last_name, :phone, :email, :object, :city, :content)
  end
end
