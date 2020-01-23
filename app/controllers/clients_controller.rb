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
        @client = Client.create(client_params)
        if @client.valid?
            payload = { user_id: @client.id }
            token = encode_token(payload)
            render json: { client: @client, token:token }
        else
            render json: { errors:@client.errors.full_messages }, status: :not_acceptable
        end
    end

    def update      
        @client = Client.find(params[:id])
        @client.update(client_params)
        render json: @client
    end

    def destroy
        @client = Client.find(params[:id])
        @client.destroy
    end

    private

    def client_params
        # params.require[:client].permit(:first_name,:last_name,:password,:image,:domain)
        params.permit(:first_name,:last_name,:username,:password,:image,:domain,:kind)
    end
end
