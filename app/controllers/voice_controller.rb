class VoiceController < ApplicationController
  
  skip_before_filter :authenticate_admin!
    
  def check_have_phonenumber
    
  end
  
  def init_call  

    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new(TWILIO_SID, TWILIO_TOKEN)

    @account = @client.account
    @call = @account.calls.create({
      :from => '+14242752362',
      :to => '+18175848815', :url => 'http://askadoc.herokuapp.com/voice/make_call',
      :application_sid => 'AP94d5494815c74e5bb58d919105eed1e4'})
    
    puts "inspect =>" + @call.inspect
    puts "json => #{@call.to_json}"
    
  end
  
  def make_call
    
    puts "twilio called me"
    
    @r = Twilio::Response.new
    @r.addSay "I am talking to you."
    render :content_type => 'application/xml', :text => @r.respond

  end
  
end
