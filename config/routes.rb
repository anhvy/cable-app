Rails.application.routes.draw do

	root 'homes#index'
	post '/send', to: 'homes#receive'
end
