class ConsultoriosController < ApplicationController
  before_action :set_consultorio, only: %i[ show edit update destroy ]

  # GET /consultorios or /consultorios.json
  def index
    @consultorios = Consultorio.all
  end

  # GET /consultorios/1 or /consultorios/1.json
  def show
  end

  # GET /consultorios/new
  def new
    @consultorio = Consultorio.new
  end

  # GET /consultorios/1/edit
  def edit
  end

  # POST /consultorios or /consultorios.json
  def create
    @consultorio = Consultorio.new(consultorio_params)

    respond_to do |format|
      if @consultorio.save
        format.html { redirect_to consultorio_url(@consultorio), notice: "Consultorio was successfully created." }
        format.json { render :show, status: :created, location: @consultorio }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @consultorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consultorios/1 or /consultorios/1.json
  def update
    respond_to do |format|
      if @consultorio.update(consultorio_params)
        format.html { redirect_to consultorio_url(@consultorio), notice: "Consultorio was successfully updated." }
        format.json { render :show, status: :ok, location: @consultorio }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @consultorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consultorios/1 or /consultorios/1.json
  def destroy
    @consultorio.destroy

    respond_to do |format|
      format.html { redirect_to consultorios_url, notice: "Consultorio was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_consultorio
      @consultorio = Consultorio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def consultorio_params
      params.fetch(:consultorio, {})
    end
end
