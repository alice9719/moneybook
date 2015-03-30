class FormmsController < ApplicationController
  before_action :set_formm, only: [:show, :edit, :update, :destroy]

  # GET /formms
  # GET /formms.json
  def index
    @formms = Formm.order(:buyday)
    @total = Formm.sum(:price)
  end
  
  def march
    @formms = Formm.order(:buyday)
    @march_months = @formms.group_by { |r| r.buyday.beginning_of_month}
    @total = Formm.sum(:price)
  end

  # GET /formms/1
  # GET /formms/1.json
  def show
  end

  # GET /formms/new
  def new
    @formm = Formm.new
  end

  # GET /formms/1/edit
  def edit
  end

  # POST /formms
  # POST /formms.json
  def create
    @formm = Formm.new(formm_params)

    respond_to do |format|
      if @formm.save
        format.html { redirect_to @formm, notice: 'Formm was successfully created.' }
        format.json { render :show, status: :created, location: @formm }
      else
        format.html { render :new }
        format.json { render json: @formm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formms/1
  # PATCH/PUT /formms/1.json
  def update
    respond_to do |format|
      if @formm.update(formm_params)
        format.html { redirect_to @formm, notice: 'Formm was successfully updated.' }
        format.json { render :show, status: :ok, location: @formm }
      else
        format.html { render :edit }
        format.json { render json: @formm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formms/1
  # DELETE /formms/1.json
  def destroy
    @formm.destroy
    respond_to do |format|
      format.html { redirect_to formms_url, notice: 'Formm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formm
      @formm = Formm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formm_params
      params.require(:formm).permit(:buyday, :title, :price, :ps)
    end
end
