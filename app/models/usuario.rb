class Usuario < ApplicationRecord
  self.primary_key = 'clave_de_usuario'
  before_save {self.clave_de_usuario = (Usuario.all.count+1).to_s + "cap"}

end
