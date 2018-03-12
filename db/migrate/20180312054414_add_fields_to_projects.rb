class AddFieldsToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :goal, :text
    add_column :projects, :target_audience, :text
    add_column :projects, :info, :text
    add_column :projects, :current_tools, :string
    add_column :projects, :problems, :string
    add_column :projects, :metrics, :string
    add_column :projects, :visiting, :string
    add_column :projects, :season, :string
    add_column :projects, :in_house, :boolean
    add_column :projects, :agencies, :text
    add_column :projects, :non_profit, :text
    add_column :projects, :current_metrics, :boolean
    add_column :projects, :values, :text
    add_column :projects, :tactic, :text
  end
end
