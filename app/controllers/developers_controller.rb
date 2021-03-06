class DevelopersController < ApplicationController
    def index
        @developers = Developer.all 
        render json: @developers
    end

    def show
        @developer = Developer.find(params[:id])
        render json: @developer
    end

    def create
        @developer = Developer.create(dev_params)
        if @developer.valid?
            payload = { user_id: @developer.id }
            token = encode_token(payload)
            # render json: { developer: @developer ,token: token }
            render json: { user: @developer, user_id: @developer.id, token: token, success: "Welcome back #{@developer.username}"} 
        else
            render json: { errors: @developer.errors.full_messages }, status: :not_acceptable
        end
    end

    def update
        @developer = Developer.find(params[:id])
        @developer.update(dev_params)
        payload = { user_id: @developer.id }
        token = encode_token(payload)
        render json: { user: @developer, user_id: @developer.id, token: token, success: "Welcome back #{@developer.username}"}
    end

    def destroy
        @developer = Developer.find(params[:id])
        @developer.destroy() 
        render json: @developer
    end

    private 
    
    def dev_params
        params.permit(:first_name,:last_name,:username,:password,:image,:experience,:skill,:kind)
    end

end 
