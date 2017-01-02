class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

	before_action :set_locale

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end

	def home
		render :layout => false
	end

	def studios
		@title= "Nos Studios"
		@img_folder = "studios"
		render :layout => "inner"
	end

	def apartments
		@title= "Nos Appartements"
		@img_folder = "apartments"
		render :layout => "inner"
	end

	def contact
		@title= "Contact Us"
		@img_folder = "contact"
		render :layout => "inner"
	end

	def services
		@title= "Nos Services"
		@img_folder = "services"
		render :layout => "inner"
	end

	def todo
		@title= "Things to do"
		@img_folder = "todo"
		render :layout => "inner"
	end

end
