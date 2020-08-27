class CreatePositions < ActiveRecord::Migration[6.0]
  def change
    create_table :positions do |t|
      t.date :open_date
      t.date :close_date
      t.integer :cost
      t.decimal :quantity
      t.text :notes
      t.boolean :status
      t.references :portfolio, null: false, foreign_key: true
      t.references :stock, null: false, foreign_key: true

      t.timestamps
    end
  end
end
