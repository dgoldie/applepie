class VoiceController < ApplicationController
  
  skip_before_filter :authenticate_admin!
  
  BASE_URL = "http://askadoc.herokuapp.com/voice"
  
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
    
  end
  
  def make_call
    
    puts "twilio called me"
    # @r = Twilio::Response.new
    #     @r.addSay "Just ask a question and we will let you know as soon as someone gives you an answer."
    render :action => 'response.xml.builder', :layout => false
    
    # response = Twilio::TwiML::Response.new do |r|
    #       r.Say 'Just ask a question and we will let you know as soon as someone gives you an answer.', :voice => 'woman'
    #       r.Dial :callerId => '+14159992222' do |d|
    #         d.Client 'DocTalk'
    #       end
    #     end
    #     render :content_type => 'application/xml', :text => r.respond
    
  end
  
end
