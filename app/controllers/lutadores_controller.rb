class LutadoresController < ApplicationController
  before_action :set_lutador, only: [:show, :edit, :update, :destroy]

  # GET /lutadores
  # GET /lutadores.json
  def index
    @lutadores = Lutador.all
  end

  # GET /lutadores/1
  # GET /lutadores/1.json
  def show
  end

  # GET /lutadores/new
  def new
    @lutador = Lutador.new
  end

  # GET /lutadores/1/edit
  def edit
  end

  # POST /lutadores
  # POST /lutadores.json
  def create
    @lutador = Lutador.new(lutador_params)

    respond_to do |format|
      if @lutador.save
        format.html { redirect_to @lutador, notice: 'Lutador was successfully created.' }
        format.json { render :show, status: :created, location: @lutador }
      else
        format.html { render :new }
        format.json { render json: @lutador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lutadores/1
  # PATCH/PUT /lutadores/1.json
  def update
    respond_to do |format|
      if @lutador.update(lutador_params)
        format.html { redirect_to @lutador, notice: 'Lutador was successfully updated.' }
        format.json { render :show, status: :ok, location: @lutador }
      else
        format.html { render :edit }
        format.json { render json: @lutador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lutadores/1
  # DELETE /lutadores/1.json
  def destroy
    @lutador.destroy
    respond_to do |format|
      format.html { redirect_to lutadores_url, notice: 'Lutador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lutador
      @lutador = Lutador.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lutador_params
      params.require(:lutador).permit(:nome, :altura, :peso, :categoria, :especialidade, :ranking)
    end
end
