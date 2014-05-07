class TiposuariosController < ApplicationController
  before_action :set_tiposuario, only: [:show, :edit, :update, :destroy]

  # GET /tiposuarios
  # GET /tiposuarios.json
  def index
    @tiposuarios = Tiposuario.all
  end

  # GET /tiposuarios/1
  # GET /tiposuarios/1.json
  def show
  end

  # GET /tiposuarios/new
  def new
    @tiposuario = Tiposuario.new
  end

  # GET /tiposuarios/1/edit
  def edit
  end

  # POST /tiposuarios
  # POST /tiposuarios.json
  def create
    @tiposuario = Tiposuario.new(tiposuario_params)

    respond_to do |format|
      if @tiposuario.save
        format.html { redirect_to @tiposuario, notice: 'Tiposuario was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tiposuario }
      else
        format.html { render action: 'new' }
        format.json { render json: @tiposuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tiposuarios/1
  # PATCH/PUT /tiposuarios/1.json
  def update
    respond_to do |format|
      if @tiposuario.update(tiposuario_params)
        format.html { redirect_to @tiposuario, notice: 'Tiposuario was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tiposuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tiposuarios/1
  # DELETE /tiposuarios/1.json
  def destroy
    @tiposuario.destroy
    respond_to do |format|
      format.html { redirect_to tiposuarios_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tiposuario
      @tiposuario = Tiposuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tiposuario_params
      params.require(:tiposuario).permit(:name, :ativo)
    end
end
