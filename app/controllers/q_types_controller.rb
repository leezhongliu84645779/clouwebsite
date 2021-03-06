class QTypesController < ApplicationController
  before_action :set_q_type, only: [:show, :edit, :update, :destroy]

  # GET /q_types
  # GET /q_types.json
  def index
    @q_types = QType.all
  end

  # GET /q_types/1
  # GET /q_types/1.json
  def show
  end

  # GET /q_types/new
  def new
    @q_type = QType.new
  end

  # GET /q_types/1/edit
  def edit
  end

  # POST /q_types
  # POST /q_types.json
  def create
    @q_type = QType.new(q_type_params)

    respond_to do |format|
      if @q_type.save
        format.html { redirect_to @q_type, notice: 'Q type was successfully created.' }
        format.json { render :show, status: :created, location: @q_type }
      else
        format.html { render :new }
        format.json { render json: @q_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /q_types/1
  # PATCH/PUT /q_types/1.json
  def update
    respond_to do |format|
      if @q_type.update(q_type_params)
        format.html { redirect_to @q_type, notice: 'Q type was successfully updated.' }
        format.json { render :show, status: :ok, location: @q_type }
      else
        format.html { render :edit }
        format.json { render json: @q_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /q_types/1
  # DELETE /q_types/1.json
  def destroy
    @q_type.destroy
    respond_to do |format|
      format.html { redirect_to q_types_url, notice: 'Q type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_q_type
      @q_type = QType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def q_type_params
      params.require(:q_type).permit(:name)
    end
end
