class HomeController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
	  I18n.locale = params[:locale] || I18n.default_locale
  end


	def index
    @title = I18n.t('navigation.home')
		render :layout => false
	end

end
