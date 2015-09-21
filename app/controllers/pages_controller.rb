class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home
  end

  def new
  end

  def escort
  end

  def max_30_minutes
  end

  def contact
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end

  def search
  end

  def post_ad
  end
end
