# class ApplicationController < ActionController::Base
#     before_action :require_login

#     private

#     def require_login
#         unless logged_in?
#         flash[:error] = "You must be logged in to access this section"
#         #redirect_to root_path # halts request cycle
#         end
#     end   


#     def logged_in?
#         true
#     end  
# end
# class ApplicationController < ActionController::Base
    
#   USERS = { "lifo" => "world" }

#   before_action :authenticate

#  private
#    def authenticate
#       authenticate_or_request_with_http_digest do |username|
#       USERS[username]
#    end
#  end
# end

# class ApplicationController < ActionController::Base
#     TOKEN = "secret"

#   before_action :authenticate

#   private
#     def authenticate
#       authenticate_or_request_with_http_token do |token, options|
#         ActiveSupport::SecurityUtils.secure_compare(token, TOKEN)
#       end
#     end
#     def authenticate
#         true
#     end 
#     def secure_compare
#         TOKEN
#     end
# end
class ApplicationController < ActionController::Base
   
end