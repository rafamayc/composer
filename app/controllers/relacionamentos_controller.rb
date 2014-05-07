class RelacionamentosController < ApplicationController
  before_action :set_relacionamento, only: [:show, :edit, :update, :destroy]

  # GET /relacionamentos
  # GET /relacionamentos.json
  def index
    @relacionamentos = Relacionamento.all
  end

  # GET /relacionamentos/1
  # GET /relacionamentos/1.json
  def show
  end

  # GET /relacionamentos/new
  def new
    @relacionamento = Relacionamento.new
  end

  # GET /relacionamentos/1/edit
  def edit
  end

  # POST /relacionamentos
  # POST /relacionamentos.json
  def create
    @relacionamento = Relacionamento.new(relacionamento_params)

    respond_to do |format|
      if @relacionamento.save
        format.html { redirect_to @relacionamento, notice: 'Relacionamento was successfully created.' }
        format.json { render action: 'show', status: :created, location: @relacionamento }
      else
        format.html { render action: 'new' }
        format.json { render json: @relacionamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /relacionamentos/1
  # PATCH/PUT /relacionamentos/1.json
  def update
    respond_to do |format|
      if @relacionamento.update(relacionamento_params)
        format.html { redirect_to @relacionamento, notice: 'Relacionamento was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @relacionamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relacionamentos/1
  # DELETE /relacionamentos/1.json
  def destroy
    @relacionamento.destroy
    respond_to do |format|
      format.html { redirect_to relacionamentos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_relacionamento
      @relacionamento = Relacionamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def relacionamento_params
      params.require(:relacionamento).permit(:name, :tipo, :user_id)
    end
end
