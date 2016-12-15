require_dependency "fanta/application_controller"

module Fanta
  class ProjectsController < ApplicationController
    before_action :set_project, only: [:show, :edit, :update, :destroy]

    # GET /projects
    def index
      @projects = Project.all
    end

    # GET /projects/1
    def show
    end

    # GET /projects/new
    def new
      @project = Project.new
    end

    # GET /projects/1/edit
    def edit
    end

    # POST /projects
    def create
      @project = Project.new(project_params)

      if @project.save
        redirect_to projects_url, notice: '項目設計の登録が完了しました'
      else
        render :new
      end
    end

    # PATCH/PUT /projects/1
    def update
      if @project.update(project_params)
        redirect_to edit_project_path(@project), notice: '項目設計の更新が完了しました'
      else
        render :edit
      end
    end

    # DELETE /projects/1
    def destroy
      @project.destroy
      redirect_to projects_url, notice: '項目設計の削除が完了しました'
    end
		
		def settings
			@project = Project.get_model(params[:project_model]).first
		end
		
		def settings_regist
			@project = Project.get_model(params[:project_model]).first

			if params[:project].present?
				@project.update(project_params)
			end
			
			redirect_to setting_project_form_design_path(@project.model), notice: '項目設計の保存が完了しました'
		end
		
		def settings_preview
			@project = Project.get_model(params[:project_model]).first
			@form_designs =  @project.form_designs
		end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_project
        @project = Project.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def project_params
        params.require(:project).permit(:name, :model, :content, form_designs_attributes: [:id, :name, :type, :form_type, :slug, :content, :status, :sequence, :_destroy])
      end
  end
end
