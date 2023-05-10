class CreateSales < ActiveRecord::Migration[6.1]
  def change
    create_table :sales do |t|
      t.decimal :quota, precision: 10, scale: 2
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
