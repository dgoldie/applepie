xml.instruct!
xml.Response do
  xml.Say "Thanks for calling John, leave us your question after the beep and we will let you know as soon as we have an answer for you.  You have 1 minute, but simply press any key when you are finished."
  xml.Record(:action => "http://askadoc.herokuapp.com/voice/recording", :maxLength => 59, :finishOnKey => '1234567890*#')
  xml.Say "Thanks for the question, we will post it for you now.  We will let you know when we have an answer for you."
  xml.Hangup
end