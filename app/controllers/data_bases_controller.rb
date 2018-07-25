class DataBasesController < ApplicationController
  before_action :set_data_basis, only: [:show, :edit, :update, :destroy]

  # GET /data_bases
  # GET /data_bases.json
  def index
    @data_bases = DataBase.all
  end

  # GET /data_bases/1
  # GET /data_bases/1.json
  def show
  end

  # GET /data_bases/new
  def new
    @data_basis = DataBase.new
  end

  # GET /data_bases/1/edit
  def edit
  end

  # POST /data_bases
  # POST /data_bases.json
  def create
    @data_basis = DataBase.new(data_basis_params)

    respond_to do |format|
      if @data_basis.save
        format.html { redirect_to @data_basis, notice: 'Data base was successfully created.' }
        format.json { render :show, status: :created, location: @data_basis }
      else
        format.html { render :new }
        format.json { render json: @data_basis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_bases/1
  # PATCH/PUT /data_bases/1.json
  def update
    respond_to do |format|
      if @data_basis.update(data_basis_params)
        format.html { redirect_to @data_basis, notice: 'Data base was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_basis }
      else
        format.html { render :edit }
        format.json { render json: @data_basis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_bases/1
  # DELETE /data_bases/1.json
  def destroy
    @data_basis.destroy
    respond_to do |format|
      format.html { redirect_to data_bases_url, notice: 'Data base was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_basis
      @data_basis = DataBase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_basis_params
      params.require(:data_basis).permit(:name_article, :description, :auteurs, :date_pub, :categorie)
    end
end
