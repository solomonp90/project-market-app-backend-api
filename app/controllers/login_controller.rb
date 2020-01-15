class LoginController < ApplicationController

    def create
        @client = Client.find_by(username: params[:username])
        @developer = Developer.find_by(username: params[:username])

        if @client && @client.authenticate(params[:password])
            payload = { client_id: @client.id ,username:@client.username, user:@client} 
            token = encode_token(payload)       
            render json: { user: @client, user_id: @client.id, token: token, success: "Welcome back #{@client.username}"}         
        elsif @developer && @developer.authenticate(params[:password])
            payload = { developer_id: @developer.id ,username: @developer.username}
            token = encode_token(payload)
            render json: { user: @developer,user_id: @developer.id ,token: token, success: "Welcome back #{@developer.username}"}
        else
             render json: { failure: "Login failed please enter valid credentials"}
        end

    end 

end