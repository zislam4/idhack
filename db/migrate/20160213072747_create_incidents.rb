class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :region
      t.string :municipality
      t.text :description
      t.decimal :amount
      t.string :currency
      t.date :time_occur
      t.integer :num_occur
      t.string :country
      t.timestamp :create_time

      t.timestamps null: false
    end
  end
end
