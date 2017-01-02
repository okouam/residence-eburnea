Rails.application.routes.draw do

	get '/', to: 'home#index'

	get '/studios', to: 'application#studios'

	get '/services', to: 'application#services'

	get '/apartments', to: 'application#apartments'

	get '/things-to-do', to: 'application#todo'

	get '/contact-us', to: 'application#contact'

end
