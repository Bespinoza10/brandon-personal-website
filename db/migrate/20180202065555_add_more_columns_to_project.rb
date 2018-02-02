class AddMoreColumnsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :role, :string
    add_column :projects, :responsibilities, :text
    add_column :projects, :languages, :string
    add_column :projects, :project_link, :string
    add_column :projects, :other_link, :string
  end
end
