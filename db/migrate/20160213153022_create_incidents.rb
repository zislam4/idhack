class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :country
      t.string :region
      t.string :municipality
      t.decimal :amount
      t.date :time_occur
      t.integer :num_occur
      t.timestamp :create_time
      t.string :type
      t.text :description

      t.timestamps null: false
    end
  end
end
