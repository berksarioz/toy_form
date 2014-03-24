class TurkishesController < ApplicationController
  before_action :set_turkish, only: [:show, :edit, :update, :destroy]

  # GET /turkishes
  # GET /turkishes.json
  def index
    @turkishes = Turkish.all
  end

  # GET /turkishes/1
  # GET /turkishes/1.json
  def show
  end

  # GET /turkishes/new
  def new
    @turkish = Turkish.new
  end

  # GET /turkishes/1/edit
  def edit
  end

  # POST /turkishes
  # POST /turkishes.json
  def create
    @turkish = Turkish.new(turkish_params)

    respond_to do |format|
      if @turkish.save
        format.html { redirect_to @turkish, notice: 'Turkish was successfully created.' }
        format.json { render action: 'show', status: :created, location: @turkish }
      else
        format.html { render action: 'new' }
        format.json { render json: @turkish.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turkishes/1
  # PATCH/PUT /turkishes/1.json
  def update
    respond_to do |format|
      if @turkish.update(turkish_params)
        format.html { redirect_to @turkish, notice: 'Turkish was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @turkish.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turkishes/1
  # DELETE /turkishes/1.json
  def destroy
    @turkish.destroy
    respond_to do |format|
      format.html { redirect_to turkishes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turkish
      @turkish = Turkish.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def turkish_params
      params.require(:turkish).permit(:title, :description, :type)
    end
end
