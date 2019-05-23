json.extract! usuario, :id, :nombre, :direccion, :telefono, :email, :imagenes, :clave_de_usuario, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
