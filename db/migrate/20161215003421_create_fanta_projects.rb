class CreateFantaProjects < ActiveRecord::Migration
  def change
    create_table :fanta_projects do |t|
      t.string :name
      t.string :model
      t.text :content

      t.timestamps null: false
    end
  end
end
