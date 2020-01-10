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
        render json: @developer
    end

    def update
        @developer = Developer.find(params[:id])
        render json: @developer
    end

    def destroy
        @developer = Developer.find(params[:id])
        @developer.destroy 
        render json: @developer
    end

    private 
    
    def dev_params
        params.permit(:first_name,:last_name,:password,:image,:experience,:skill,)
    end

end 
