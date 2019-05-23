class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios, id: false do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :imagenes
      t.string :clave_de_usuario, null: false

      t.timestamps
    end
    add_index :usuarios, :clave_de_usuario, unique: true
  end
end
