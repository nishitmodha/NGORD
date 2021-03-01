class AddFieldsToProject < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :location, :string
    add_column :projects, :country, :string
    add_column :projects, :gross_area, :integer
    add_column :projects, :certified_area, :integer
    add_column :projects, :carpark_area, :integer
    add_column :projects, :project_site_area, :integer
    add_column :projects, :code, :string
    add_column :projects, :construction_year, :integer
    add_column :projects, :location_plan_file, :string
    add_column :projects, :site_plan_file, :string
    add_column :projects, :design_brief_file, :string
    add_column :projects, :project_narrative_file, :string
    add_column :projects, :owner, :string, null: false, default: ''
    add_column :projects, :service_provider, :string, null: false, default: ''
    add_column :projects, :developer, :string
    add_column :projects, :certificate_type, :integer
    add_column :projects, :service_provider_2, :string
    add_column :projects, :estimated_project_cost, :string
    add_column :projects, :cost_square_meter, :string
    add_column :projects, :estimated_building_cost, :string
    add_column :projects, :estimated_infrastructure_cost, :string
    add_column :projects, :coordinates, :string
    add_column :projects, :buildings_footprint_area, :integer
  end
end