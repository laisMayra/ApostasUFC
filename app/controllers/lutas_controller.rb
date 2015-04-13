class LutasController < ApplicationController
  before_action :set_luta, only: [:show, :edit, :update, :destroy]

  # GET /lutas
  # GET /lutas.json
  def index
    @lutas = Luta.all
  end

  # GET /lutas/1
  # GET /lutas/1.json
  def show
  end

  # GET /lutas/new
  def new
    @luta = Luta.new
  end

  # GET /lutas/1/edit
  def edit
  end

  # POST /lutas
  # POST /lutas.json
  def create
    @luta = Luta.new(luta_params)

    respond_to do |format|
      if @luta.save
        format.html { redirect_to @luta, notice: 'Luta was successfully created.' }
        format.json { render :show, status: :created, location: @luta }
      else
        format.html { render :new }
        format.json { render json: @luta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lutas/1
  # PATCH/PUT /lutas/1.json
  def update
    respond_to do |format|
      if @luta.update(luta_params)
        format.html { redirect_to @luta, notice: 'Luta was successfully updated.' }
        format.json { render :show, status: :ok, location: @luta }
      else
        format.html { render :edit }
        format.json { render json: @luta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lutas/1
  # DELETE /lutas/1.json
  def destroy
    @luta.destroy
    respond_to do |format|
      format.html { redirect_to lutas_url, notice: 'Luta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_luta
      @luta = Luta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def luta_params
      params.require(:luta).permit(:lutador1_id, :lutador2_id, :arbitro_id, :vencedor, :tipoVitoria, :rounds, :horario, :data)
    end
end
