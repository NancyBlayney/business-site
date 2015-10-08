require 'sinatra'

get '/' do 
	@title= "Home"
	erb :home
end
get '/about' do 
	@title= "About Us"
	erb :about
end


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

