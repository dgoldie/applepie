class VoiceController < ApplicationController
  
  skip_before_filter :authenticate_admin!
    
  def check_have_phonenumber
    
  end
  
  def init_call 
    puts current_user.to_json
    # set up a client to talk to the Twilio REST API
    @client = Twilio::REST::Client.new(TWILIO_SID, TWILIO_TOKEN)

    @account = @client.account
    @call = @account.calls.create({
      :from => '+14242752362',
      :to => '+18175848815', :url => 'http://doctalk.herokuapp.com/voice/make_call',
      :application_sid => 'AP3418c8bd94908cfd7581e36c052130a6'})
    
    redirect_to questions_path
    
  end
  
  def make_call
    
    puts "twilio called me"
    
    render :action => "response.xml", :layout => false

  end
  
  def recording
    puts "I am in RECORDING!!!"
    
    render :xml => "<success/>"
  end
  
  def transcribing
    puts "I am in Transcribe!!!"
    transcribe_data = params[:TranscriptionText].to_s
    recording_url = params[:RecordingUrl].to_s
    @user = User.find_by_phone(params[:Called][2, 10])
    puts "THIS IS THE USER object => #{@user}"
    puts "recording_url #{recording_url}"
    puts "transcribe_data #{transcribe_data}"
    
    @user.questions.create!(:title => transcribe_data, :content => "In case the question is unclear, the link below will allow you to listen to the original question from the doctor who asked it. #{recording_url}")
            
    render :xml => "<success/>"
  end
  
end
