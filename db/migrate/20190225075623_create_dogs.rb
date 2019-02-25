class CreateDogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :description
      t.references :owner, foreign_key: true
      t.string :breed
      t.string :images_url, array: true, default: []
      t.string :available_dates, array: true, default: []

      t.timestamps
    end
  end
end
