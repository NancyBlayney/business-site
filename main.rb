require 'sinatra'

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
	@title = "Sent Form"
	rb :mail
end