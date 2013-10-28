FactoryGirl.define do 
	factory :user do
		name     	"Jon Snider"
		email 		"jon@bowensnider.net"
		password 	"foobar"
		password_confirmation 	"foobar"
	end
end