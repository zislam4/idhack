class CreateAgencies < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :agency_type
      t.text :description
      t.string :country

      t.timestamps null: false
    end
  end
end
