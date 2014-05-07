class ForPagsController < ApplicationController
  before_action :set_for_pag, only: [:show, :edit, :update, :destroy]

  # GET /for_pags
  # GET /for_pags.json
  def index
    @for_pags = ForPag.all
  end

  # GET /for_pags/1
  # GET /for_pags/1.json
  def show
  end

  # GET /for_pags/new
  def new
    @for_pag = ForPag.new
  end

  # GET /for_pags/1/edit
  def edit
  end

  # POST /for_pags
  # POST /for_pags.json
  def create
    @for_pag = ForPag.new(for_pag_params)

    respond_to do |format|
      if @for_pag.save
        format.html { redirect_to @for_pag, notice: 'For pag was successfully created.' }
        format.json { render action: 'show', status: :created, location: @for_pag }
      else
        format.html { render action: 'new' }
        format.json { render json: @for_pag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /for_pags/1
  # PATCH/PUT /for_pags/1.json
  def update
    respond_to do |format|
      if @for_pag.update(for_pag_params)
        format.html { redirect_to @for_pag, notice: 'For pag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @for_pag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /for_pags/1
  # DELETE /for_pags/1.json
  def destroy
    @for_pag.destroy
    respond_to do |format|
      format.html { redirect_to for_pags_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_for_pag
      @for_pag = ForPag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def for_pag_params
      params.require(:for_pag).permit(:description, :days, :active)
    end
end
