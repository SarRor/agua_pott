<div class="row">
  <div class="col-s-off-2 col-s-8">
    <b><%= f.label :usuario_id, 'Clave de usuario' %></b>
    <%= f.text_field :usuario_id, :value => @usuario.id, autocomplete: "usuario_id", class:"input-ctr space-v" %>
  </div>
</div>
<%= hidden_field_tag :clave_de_usuario, @usuario.id %>

def create
  usuario = Usuario.find_by(clave_de_usuario: params[:clave_de_usuario])
  # debugger
  @pago = Pago.new(pago_params)
  if @pago.save
    flash[:success] = 'El pago fue realizdo exitosamente.'
    redirect_to usuario_path(usuario)
  else
    render :new
  end
end

bin/rails g scaffold Usuario nombre direccion telefono email imagenes clave_de_usuario

bin/rails g model Pago cantidad:decimal fecha_de_pago:datetime usuario:references nota
