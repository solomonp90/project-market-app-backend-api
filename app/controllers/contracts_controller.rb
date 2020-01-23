class ContractsController < ApplicationController
    def index
        @contracts = Contract.all   
        render json: @contracts
    end

    def show
        @contract = Contract.find(params[:id])
        render json: @contract
    end

    def create
        @contract = Contract.create(contract_params)
        if @contract.valid? && @contract.save
            render json: @contract
        else
            render json: { errors: @contract.errors.full_messages }, status: :not_acceptable
        end
    end

    private

    def contract_params
        params.permit(:signature, :project_id, :developer_id,:kind)
    end

end
