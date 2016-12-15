class CreateFantaFormDesigns < ActiveRecord::Migration
  def change
    create_table :fanta_form_designs do |t|
			t.integer :project_id
      t.string :name
      t.string :type
      t.string :form_type
      t.string :slug
      t.string :content
      t.string :status
      t.integer :sequence
      t.text :free

      t.timestamps null: false
    end
  end
end
