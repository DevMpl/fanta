class CreateFantaDesigngables < ActiveRecord::Migration
  def change
    create_table :fanta_designgables do |t|
      t.integer :form_design_id
      t.integer :designgable_id
      t.string :designgable_type
      t.string :content

      t.timestamps null: false
    end
  end
end
