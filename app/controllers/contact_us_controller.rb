class ContactUsController < ApplicationController
  def index
    @contact = ContactUs.new(params[:contact_us])
  end

  def create
    @contact = ContactUs.new(contact_params)
    @contact.request = request

    respond_to do |format|
      if @contact.deliver
        @contact = ContactUs.new
        format.html { redirect_to home_index_url, notice: "Thanks for your question, will respond shortly." }
      else
        format.html { render "index", alert: "error in sending your email" }
      end
    end
  end

  private

  def contact_params
    params.require(:contact_us).permit(:email, :name, :message, :to, :subject)
  end
end
