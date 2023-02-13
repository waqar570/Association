class MyMailer < ActionMailer::Base
   def welcome_email(author)
      @author = author
     mail(to: "waqarkhokhar570@gmail.com", subject: 'Welcome to WAQAR Awesome Site')
   end
end
