xml.instruct!
xml.Response do
  xml.Say "Thanks for calling John, leave us with your question after the beep and we will let you know as soon as we have an answer for you."
  xml.Record(:action => "http://askadoc.herokuspp.com/voice/recording", :maxLength => 59, :finishOnKey)
  xml.Hangup
end