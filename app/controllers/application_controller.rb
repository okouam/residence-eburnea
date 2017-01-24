class ApplicationController < ActionController::Base

	before_action :set_locale

	def set_locale
		I18n.locale = params[:locale] || I18n.default_locale
	end

	def home
		render :layout => false
	end

	def studios
		@title= I18n.t('navigation.studios')
		@img_folder = "studios"
		render :layout => "inner"
	end

	def apartments
		@title= I18n.t('navigation.apartments')
		@img_folder = "apartments"
		render :layout => "inner"
	end

	def contact
		@title= I18n.t('navigation.contact')
		@img_folder = "contact"
		render :layout => "inner"
	end

	def services
		@title= I18n.t('navigation.services')
		@img_folder = "services"
		render :layout => "inner"
	end

	def todo
		@title= I18n.t('navigation.todo')
		@img_folder = "todo"
		render :layout => "inner"
	end

	def send_email
		@title= I18n.t('navigation.contact')
		@img_folder = "contact"
		InfoMailer.contact_request(params[:sender_name], params[:sender_email], params[:sender_phone], params[:sender_message]).deliver_now
		flash[:sent] = 'You eaeasasd'
		redirect_to "/#{params[:locale]}/contact-us"
	end

end
