class RecitasController < ApplicationController
  before_action :set_recita, only: %i[ show edit update destroy ]

  # GET /recitas or /recitas.json
  def index
    @recitas = Recita.all
  end

  # GET /recitas/1 or /recitas/1.json
  def show
  end

  # GET /recitas/new
  def new
    @recita = Recita.new
  end

  # GET /recitas/1/edit
  def edit
  end

  # POST /recitas or /recitas.json
  def create
    @recita = Recita.new(recita_params)

    respond_to do |format|
      if @recita.save
        format.html { redirect_to @recita, notice: "Recita was successfully created." }
        format.json { render :show, status: :created, location: @recita }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recita.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recitas/1 or /recitas/1.json
  def update
    respond_to do |format|
      if @recita.update(recita_params)
        format.html { redirect_to @recita, notice: "Recita was successfully updated." }
        format.json { render :show, status: :ok, location: @recita }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recita.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recitas/1 or /recitas/1.json
  def destroy
    @recita.destroy
    respond_to do |format|
      format.html { redirect_to recitas_url, notice: "Recita was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recita
      @recita = Recita.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recita_params
      params.require(:recita).permit(:nome, :descricao, :valor)
    end
end
