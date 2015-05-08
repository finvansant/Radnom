class RadnomAppsController < ApplicationController
  before_action :set_radnom_app, only: [:show, :edit, :update, :destroy]

  # GET /radnom_apps
  # GET /radnom_apps.json
  def index
  end

  def wheel
    @radnom_apps = RadnomApp.all
  end

  def list
    @radnom_apps = RadnomApp.all
  end

  # GET /radnom_apps/1
  # GET /radnom_apps/1.json
  def show
  end

  # GET /radnom_apps/new
  def new
    @radnom_app = RadnomApp.new
  end

  # GET /radnom_apps/1/edit
  def edit
  end

  # POST /radnom_apps
  # POST /radnom_apps.json
  def create
    @radnom_app = RadnomApp.new(radnom_app_params)

    respond_to do |format|
      if @radnom_app.save
        format.html { redirect_to @radnom_app, notice: 'Ah yeah!' }
        format.json { render :show, status: :created, location: @radnom_app }
      else
        format.html { render :new }
        format.json { render json: @radnom_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /radnom_apps/1
  # PATCH/PUT /radnom_apps/1.json
  def update
    respond_to do |format|
      if @radnom_app.update(radnom_app_params)
        format.html { redirect_to @radnom_app, notice: 'Oh, I can def see them being chosen...' }
        format.json { render :show, status: :ok, location: @radnom_app }
      else
        format.html { render :edit }
        format.json { render json: @radnom_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /radnom_apps/1
  # DELETE /radnom_apps/1.json
  def destroy
    @radnom_app.destroy
    respond_to do |format|
      format.html { redirect_to radnom_apps_url, notice: 'Radnom app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_radnom_app
      @radnom_app = RadnomApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def radnom_app_params
      params.require(:radnom_app).permit(:name)
    end
end
