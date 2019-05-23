

bin/rails g scaffold Usuario nombre direccion telefono email imagenes clave_de_usuario

bin/rails g model Pago cantidad:decimal fecha_de_pago:datetime usuario:references nota
