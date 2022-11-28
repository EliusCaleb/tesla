class TeslasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

    def index 
        # tesla = Tesla.all 
        # render json: tesla
    end

    def show 
        # tesla = Tesla.find(params[:id])
        # render json: tesla, status: :ok, serializer: TeslaUserSerializer
    end
    
    private
    def render_not_found
        render json: {error: "User Not Found"}, status: :not_found
    end

end
