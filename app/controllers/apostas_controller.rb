class ApostasController < ApplicationController
  before_action :set_aposta, only: [:show, :edit, :update, :destroy]

  # GET /apostas
  # GET /apostas.json
  def index
    @apostas = Aposta.all
  end

  # GET /apostas/1
  # GET /apostas/1.json
  def show
  end

  # GET /apostas/new
  def new
    @aposta = Aposta.new
  end

  # GET /apostas/1/edit
  def edit
  end

  # POST /apostas
  # POST /apostas.json
  def create
    @aposta = Aposta.new(aposta_params)

    respond_to do |format|
      if @aposta.save
        format.html { redirect_to @aposta, notice: 'Aposta was successfully created.' }
        format.json { render :show, status: :created, location: @aposta }
      else
        format.html { render :new }
        format.json { render json: @aposta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /apostas/1
  # PATCH/PUT /apostas/1.json
  def update
    respond_to do |format|
      if @aposta.update(aposta_params)
        format.html { redirect_to @aposta, notice: 'Aposta was successfully updated.' }
        format.json { render :show, status: :ok, location: @aposta }
      else
        format.html { render :edit }
        format.json { render json: @aposta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /apostas/1
  # DELETE /apostas/1.json
  def destroy
    @aposta.destroy
    respond_to do |format|
      format.html { redirect_to apostas_url, notice: 'Aposta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aposta
      @aposta = Aposta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aposta_params
      params.require(:aposta).permit(:tipoAposta_id, :luta_id, :jogador_id, :resultado, :valor)
    end
end
