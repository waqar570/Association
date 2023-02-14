class AMailer < ApplicationMailer
    default :from => 'waqarkhokhar570@gmail.com'

    def send_signup_email(author)
        @author = author
        mail(
        to:  (@author.name),
        subject:  'Thanks for creating Author for our amazing app' 
        )
    end
end
