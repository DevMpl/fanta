require_dependency "fanta/application_controller"

module Fanta
  class FormDesignsController < ApplicationController

    before_action :set_form_design, only: [:show, :edit, :update, :destroy]
		
		
		def settings
			binding.pry
			params[:project_model]
		end
		
		
    # GET /form_designs
    def index
      @form_designs = FormDesign.all
    end

    # GET /form_designs/1
    def show
    end

    # GET /form_designs/new
    def new
      @form_design = FormDesign.new
    end

    # GET /form_designs/1/edit
    def edit
    end

    # POST /form_designs
    def create
      @form_design = FormDesign.new(form_design_params)

      if @form_design.save
        redirect_to @form_design, notice: 'Form design was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /form_designs/1
    def update
      if @form_design.update(form_design_params)
        redirect_to @form_design, notice: 'Form design was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /form_designs/1
    def destroy
      @form_design.destroy
      redirect_to form_designs_url, notice: 'Form design was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_form_design
        @form_design = FormDesign.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def form_design_params
        params.require(:form_design).permit(:name, :type, :form_type, :slug, :content, :status, :sequence, :free)
      end
  end
end
