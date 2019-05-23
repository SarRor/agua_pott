class CreatePagos < ActiveRecord::Migration[5.2]
  def change
    create_table :pagos do |t|
      t.decimal :cantidad, precision: 6, scale: 2
      t.datetime :fecha_de_pago
      t.references :usuario, foreign_key: true
      t.string :nota
      t.string :concepto
      
      t.timestamps
    end
  end
end
