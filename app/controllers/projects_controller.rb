class ProjectsController < ApplicationController
    def index
        @projects = Project.all 
        render json: @projects
    end

    def show
        @project = Project.find(params[:id])
        render json: { project: @project }
    end

    def create
        @project = Project.create(project_params)
        if @project.valid? && @project.save
            render json: @project 
        else
            render json: { errors: @project.errors.full_messages }, status: :not_acceptable
        end
    end

    def update
        @project = Project.find(params[:id])
        @project.update(project_params)
        render json: @project
    end

    def destroy
        @project = Project.find(params[:id])
        @project.destroy
    end

    private
    
    def project_params
        params.permit(:title, :image, :description, :stipulation, :client_id, :kind)
    end

end
