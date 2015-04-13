class ArbitrosController < ApplicationController
  before_action :set_arbitro, only: [:show, :edit, :update, :destroy]

  # GET /arbitros
  # GET /arbitros.json
  def index
    @arbitros = Arbitro.all
  end

  # GET /arbitros/1
  # GET /arbitros/1.json
  def show
  end

  # GET /arbitros/new
  def new
    @arbitro = Arbitro.new
  end

  # GET /arbitros/1/edit
  def edit
  end

  # POST /arbitros
  # POST /arbitros.json
  def create
    @arbitro = Arbitro.new(arbitro_params)

    respond_to do |format|
      if @arbitro.save
        format.html { redirect_to @arbitro, notice: 'Arbitro was successfully created.' }
        format.json { render :show, status: :created, location: @arbitro }
      else
        format.html { render :new }
        format.json { render json: @arbitro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arbitros/1
  # PATCH/PUT /arbitros/1.json
  def update
    respond_to do |format|
      if @arbitro.update(arbitro_params)
        format.html { redirect_to @arbitro, notice: 'Arbitro was successfully updated.' }
        format.json { render :show, status: :ok, location: @arbitro }
      else
        format.html { render :edit }
        format.json { render json: @arbitro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arbitros/1
  # DELETE /arbitros/1.json
  def destroy
    @arbitro.destroy
    respond_to do |format|
      format.html { redirect_to arbitros_url, notice: 'Arbitro was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arbitro
      @arbitro = Arbitro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arbitro_params
      params.require(:arbitro).permit(:nome, :qtd_lutas)
    end
end
