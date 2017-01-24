class InfoMailer < ApplicationMailer

	default from: 'web@residence-eburnea.com'

     def contact_request(name, email, mobile, message)
	   @name = name
	   @mobile = mobile
	   @email = email
	   @message = message
       mail(from: 'web@residence-eburnea.com', to: 'info@residence-eburnea.com', subject: "Demande d'informations")
     end

end
