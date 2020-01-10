class ClientsController < ApplicationController

    def index
        @clients = Client.all   
        render json: @clients 
    end

    def show      
       @client = Client.find(params[:id])
       render json: @client
    end

    def create
        @client = CLient.create(params[:id])
        render json: @client
    end

    def update      
        @client = Client.find(params[:id])
        @client.update(client_params)
    end

    def destroy
        @client = Client.find(params[:id])
        @client.destroy
    end

    private

    def client_params
        # params.require[:client].permit(:first_name,:last_name,:password,:image,:domain)
        params.permit(:first_name,:last_name,:password,:image,:domain)
    end
end
