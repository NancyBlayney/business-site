require 'mandrill'
api_key = ENV['MANDRILL_APIKEY']
m = Mandrill::API.new "#{api_key}"
message = {
 :subject=> "Message from <%= @params(:from_name) %>",
 :from_name=> @params(:from_name)
 :text=> @params(:text)
 :to=>[{:email=> "a.b320012@gmail.com", :name=> "Alex"}],
 :html=>"<html><h1>Hi <strong>message</strong>, how are you?</h1></html>",
 :from_email=> @params(:from_email)
}
sending = m.messages.send message
puts sending