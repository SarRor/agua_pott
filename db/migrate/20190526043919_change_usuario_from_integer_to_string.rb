class ChangeUsuarioFromIntegerToString < ActiveRecord::Migration[5.2]
  def change
    remove_column :pagos, :usuario_id, :integer
    add_column :pagos, :usuario_id, :string
  end
end
