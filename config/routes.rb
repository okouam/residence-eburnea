Rails.application.routes.draw do

	get '/', to: redirect('/en/')

	post '/contact', to: 'application#send_email'

	scope "/:locale" do

		get '/', to: 'home#index'

		get '/studios', to: 'application#studios'

		get '/services', to: 'application#services'

		get '/apartments', to: 'application#apartments'

		get '/things-to-do', to: 'application#todo'

		get '/contact-us', to: 'application#contact'
	end


end
