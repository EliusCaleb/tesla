class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index 
        users = User.all 
        render json: users
    end

    def show 
        user = User.find(params[:id])
        render json: user, status: :ok, serializer: UserTeslaSerializer  
    end

    private
    
    def render_not_found
        render json: {error: "User Not Found"}, status: :not_found
    end

end
