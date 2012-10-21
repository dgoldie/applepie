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
      :application_sid => 'AP3418c8bd94908cfd7581e36c052130a6'})
    
    redirect_to questions_path
    
  end
  
  def make_call
    
    puts "twilio called me"
    
    render :action => "response.xml.builder", :layout => false

  end
  
  def recording
    puts "I am in RECORDING!!!"
    recording_url = params['RecordingUrl']
    # email the recording url to the support team via sendhub.net ;)
    puts "recording_url #{recording_url}"
    
    head
  end
  
  def transcribing
    puts "I am in Transcribe!!!"
    transcribing_url = params[:TranscriptionText].to_s
    # puts the transcribing url;)
    puts "transcribing_url #{transcribing_url}"
    
    render :nothing
  end
  
end
