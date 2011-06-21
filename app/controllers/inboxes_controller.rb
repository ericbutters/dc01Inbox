class InboxesController < ApplicationController

   ActionMailer::Base::Mail.defaults do
   retriever_method :pop3, :address    => "pop.gmail.com",
		           :port       => 995,
		           :user_name  => 'dakuit00t@googlemail.com',
		           :password   => 'daniel_123',
		           :enable_ssl => true
  end
  
  def index
    e = Mail.all
    if e.length 
      @email = e
      @nummails = e.length
    else
      @nummails = 0
    end
  end
  
  def show
  end
end