class CreatePlaydates < ActiveRecord::Migration[5.2]
  def change
    create_table :playdates do |t|
      t.references :user, foreign_key: true
      t.references :dog, foreign_key: true
      t.string :date
      t.string :payment
      t.boolean :completed

      t.timestamps
    end
  end
end
