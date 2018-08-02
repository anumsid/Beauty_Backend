# class Api::V1::AuthController < ApplicationController
#
#   def create
#     user = User.find_by(username: params[:username])
#     if user && user.authenticate(params[:password])
#       token = encoded_token(user)
#       render json: {username: user.username, id: user.id, jwt: token}, status: 200
#     else
#       render json: {error: 'Username or Password Invalid'}, status: 401
#     end
#   end
#
#   def show
#     if logged_in?
#       render json: {username: current_user.username, id: current_user.id}, status: 200
#     else
#       render json: {error: 'Token Invalid'}, status: 401
#     end
#   end
#
# end

class Api::V1::AuthController < ApplicationController

   def create
     # byebug
   user = User.find_by(username: params[:username])
   # byebug
   if user && user.authenticate(params[:password])
     # issue that user a token
     token = issue_token(user)

     render json: {id: user.id, username: user.username, jwt: token}
   else
     render json: {error: 'That user could not be found'}, status: 401
   end
 end

 def show
   # token = request.headers['Authorization']
   # user = User.find_by(id: token)
   if logged_in?
     render json: { id: current_user.id, username: current_user.username }
   else
     render json: {error: 'No User Could Be Found'}, status: 401
   end
 end

end
