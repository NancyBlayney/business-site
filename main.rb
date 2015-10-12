require 'sinatra'
require 'mandrill'

get '/' do 
	@title= "Home"
	erb :home
end
get '/about' do 
	@title= "About Us"
	erb :about
end

get '/treatments' do 
	@title = "Treatments"
	erb :treatments
end

get '/patientinfo' do 
	@title = "Patient Information"
	erb :patientinfo
end

get '/form' do
	@title = "Contact Us"
	erb :form
end



 post '/mail' do
 	api_key = ENV['MANDRILL_APIKEY']
    m = Mandrill::API.new "#{api_key}"
    message = {
        :subject => "Hello from the Mandrill API",
        :from_name => "#{params[:name]} #{params[:email]}",
        :text => "Hi message how are you?",
        :to => [
            {
                :email => "a.b320012@gmail.com",
                :name => "Recipient1"
             }
        ],
        :html => "<html>#{params[:msg]}</html>",
        :from_email => "anonymous@gmail.com"
    }
    sending = m.messages.send message
    puts sending
    erb :home
end