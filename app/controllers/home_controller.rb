# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @contact = ContactUs.new(params[:contact_us])
  end
end
