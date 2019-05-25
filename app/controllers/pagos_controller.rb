class PagosController < ApplicationController
  before_action :set_pago, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!

  def new
    @pago = Pago.new
  end

  def create
    @pago = Pago.new(pago_params)
    @pago.usuario_id = params[:usuario]
    if @pago.save
      flash[:success] = 'El pago fue realizdo exitosamente.'
      redirect_to root_path
    else
      render :new
    end
  end

  def update
    if @pago.update(pago_params)
      flash[:success] = 'El pago fue actualizado exitosamente.'
      redirect_to @pago
    else
      render :edit
    end
  end

  def destroy
    @pago.destroy
    flash[:danger] = 'El pago fue borrado.'
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pago
      @pago = Pago.find(params[:id])
    end

    def pago_params
      params.require(:pago).permit(:cantidad, :concepto)
    end
end
