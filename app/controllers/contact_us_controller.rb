class ContactUsController < ApplicationController
  def index
    @contact = ContactUs.new(params[:contact_us])
  end

  def new 
    @contact = Contact.new 
  end

  def create
    @contact = ContactUs.new(contact_params)
    @contact.request = request

    if @contact.deliver 
      redirect_to root_path, flash.now[:notice] = "Sent successfully"
    else  
      flash.now[:alert] = "Failed to send email"
    end
  end

  private

  def contact_params
    params.require(:contact_us).permit(:email, :name, :message, :to, :subject)
  end
end
