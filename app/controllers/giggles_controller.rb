class GigglesController < ApplicationController
  before_action :set_giggle, only: [:show, :edit, :update, :destroy]

  # GET /giggles
  # GET /giggles.json
  def index
    @giggles = Giggle.all
  end

  # GET /giggles/1
  # GET /giggles/1.json
  def show
  end

  # GET /giggles/new
  def new
    @giggle = Giggle.new
  end

  # GET /giggles/1/edit
  def edit
  end

  # POST /giggles
  # POST /giggles.json
  def create
    @giggle = Giggle.new(giggle_params)

    respond_to do |format|
      if @giggle.save
        format.html { redirect_to @giggle, notice: 'Giggle was successfully created.' }
        format.json { render :show, status: :created, location: @giggle }
      else
        format.html { render :new }
        format.json { render json: @giggle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /giggles/1
  # PATCH/PUT /giggles/1.json
  def update
    respond_to do |format|
      if @giggle.update(giggle_params)
        format.html { redirect_to @giggle, notice: 'Giggle was successfully updated.' }
        format.json { render :show, status: :ok, location: @giggle }
      else
        format.html { render :edit }
        format.json { render json: @giggle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /giggles/1
  # DELETE /giggles/1.json
  def destroy
    @giggle.destroy
    respond_to do |format|
      format.html { redirect_to giggles_url, notice: 'Giggle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_giggle
      @giggle = Giggle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def giggle_params
      params.require(:giggle).permit(:title, :body, :author, :image)
    end
end
