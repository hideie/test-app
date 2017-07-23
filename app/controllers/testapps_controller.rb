class TestappsController < ApplicationController
  before_action :set_testapp, only: [:show, :edit, :update, :destroy]

  # GET /testapps
  # GET /testapps.json
  def index
    @testapps = Testapp.all
  end

  # GET /testapps/1
  # GET /testapps/1.json
  def show
  end

  # GET /testapps/new
  def new
    @testapp = Testapp.new
  end

  # GET /testapps/1/edit
  def edit
  end

  # POST /testapps
  # POST /testapps.json
  def create
    @testapp = Testapp.new(testapp_params)

    respond_to do |format|
      if @testapp.save
        format.html { redirect_to @testapp, notice: 'Testapp was successfully created.' }
        format.json { render :show, status: :created, location: @testapp }
      else
        format.html { render :new }
        format.json { render json: @testapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /testapps/1
  # PATCH/PUT /testapps/1.json
  def update
    respond_to do |format|
      if @testapp.update(testapp_params)
        format.html { redirect_to @testapp, notice: 'Testapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @testapp }
      else
        format.html { render :edit }
        format.json { render json: @testapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testapps/1
  # DELETE /testapps/1.json
  def destroy
    @testapp.destroy
    respond_to do |format|
      format.html { redirect_to testapps_url, notice: 'Testapp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_testapp
      @testapp = Testapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def testapp_params
      params.require(:testapp).permit(:name, :gender, :birthday)
    end
end
