class TipoApostasController < ApplicationController
  before_action :set_tipo_aposta, only: [:show, :edit, :update, :destroy]

  # GET /tipo_apostas
  # GET /tipo_apostas.json
  def index
    @tipo_apostas = TipoAposta.all
  end

  # GET /tipo_apostas/1
  # GET /tipo_apostas/1.json
  def show
  end

  # GET /tipo_apostas/new
  def new
    @tipo_aposta = TipoAposta.new
  end

  # GET /tipo_apostas/1/edit
  def edit
  end

  # POST /tipo_apostas
  # POST /tipo_apostas.json
  def create
    @tipo_aposta = TipoAposta.new(tipo_aposta_params)

    respond_to do |format|
      if @tipo_aposta.save
        format.html { redirect_to @tipo_aposta, notice: 'Tipo aposta was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_aposta }
      else
        format.html { render :new }
        format.json { render json: @tipo_aposta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_apostas/1
  # PATCH/PUT /tipo_apostas/1.json
  def update
    respond_to do |format|
      if @tipo_aposta.update(tipo_aposta_params)
        format.html { redirect_to @tipo_aposta, notice: 'Tipo aposta was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_aposta }
      else
        format.html { render :edit }
        format.json { render json: @tipo_aposta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_apostas/1
  # DELETE /tipo_apostas/1.json
  def destroy
    @tipo_aposta.destroy
    respond_to do |format|
      format.html { redirect_to tipo_apostas_url, notice: 'Tipo aposta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_aposta
      @tipo_aposta = TipoAposta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_aposta_params
      params.require(:tipo_aposta).permit(:descricao)
    end
end
