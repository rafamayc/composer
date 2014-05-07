class TipoPagsController < ApplicationController
  before_action :set_tipo_pag, only: [:show, :edit, :update, :destroy]

  # GET /tipo_pags
  # GET /tipo_pags.json
  def index
    @tipo_pags = TipoPag.all
  end

  # GET /tipo_pags/1
  # GET /tipo_pags/1.json
  def show
  end

  # GET /tipo_pags/new
  def new
    @tipo_pag = TipoPag.new
  end

  # GET /tipo_pags/1/edit
  def edit
  end

  # POST /tipo_pags
  # POST /tipo_pags.json
  def create
    @tipo_pag = TipoPag.new(tipo_pag_params)

    respond_to do |format|
      if @tipo_pag.save
        format.html { redirect_to @tipo_pag, notice: 'Tipo pag was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tipo_pag }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipo_pag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_pags/1
  # PATCH/PUT /tipo_pags/1.json
  def update
    respond_to do |format|
      if @tipo_pag.update(tipo_pag_params)
        format.html { redirect_to @tipo_pag, notice: 'Tipo pag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tipo_pag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_pags/1
  # DELETE /tipo_pags/1.json
  def destroy
    @tipo_pag.destroy
    respond_to do |format|
      format.html { redirect_to tipo_pags_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_pag
      @tipo_pag = TipoPag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_pag_params
      params.require(:tipo_pag).permit(:description, :active)
    end
end
