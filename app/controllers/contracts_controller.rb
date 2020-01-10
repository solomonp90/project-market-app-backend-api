class ContractsController < ApplicationController
    def index
        @contracts = Contract.all   
        render json: @contracts
    end

    def show
        @contract = Contract.find(params[:id])
    end
    
end