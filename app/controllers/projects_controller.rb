class ProjectsController < ApplicationController
  load_and_authorize_resource
  before_action :set_project, only: %i[ show edit update destroy ]
  before_action :authenticate_user!

  # GET /projects or /projects.json
  def index
    @projects = Project.all
  end

  # GET /projects/1 or /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
  end

  # POST /projects or /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: "Project was successfully created." }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1 or /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: "Project was successfully updated." }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1 or /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: "Project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      if current_user.system_admin? || current_user.gsas_trust_admin?
        params.require(:project).permit(:name, :certificate_type, :owner, :developer, :service_provider, :service_provider_2, :description, :address, :location, :country, :construction_year, :coordinates, :buildings_footprint_area, :gross_area, :certified_area, :carpark_area, :project_site_area, :terms_and_conditions_accepted, :location_plan_file, :location_plan_file_cache, :site_plan_file, :site_plan_file_cache, :design_brief_file, :design_brief_file_cache, :project_narrative_file, :project_narrative_file_cache, :building_type_group_id, :building_type_id, :estimated_project_cost, :cost_square_meter, :estimated_building_cost, :estimated_infrastructure_cost, :code)
      else
        params.require(:project).permit(:name, :certificate_type, :owner, :developer, :service_provider_2, :description, :address, :location, :country, :construction_year, :coordinates, :buildings_footprint_area, :gross_area, :certified_area, :carpark_area, :project_site_area, :terms_and_conditions_accepted, :location_plan_file, :location_plan_file_cache, :site_plan_file, :site_plan_file_cache, :design_brief_file, :design_brief_file_cache, :project_narrative_file, :project_narrative_file_cache, :building_type_group_id, :building_type_id, :estimated_project_cost, :cost_square_meter, :estimated_building_cost, :estimated_infrastructure_cost)
      end
    end
end
