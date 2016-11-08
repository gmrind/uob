class BankslipsController < ApplicationController
  before_action :set_bankslip, only: [:show, :edit, :update, :destroy]

  # GET /bankslips
  # GET /bankslips.json
  def index
    @bankslips = Bankslip.all
  end

  # GET /bankslips/1
  # GET /bankslips/1.json
  def show
  end

  # GET /bankslips/new
  def new
    @bankslip = Bankslip.new
  end

  # GET /bankslips/1/edit
  def edit
  end

  # POST /bankslips
  # POST /bankslips.json
  def create
    @bankslip = Bankslip.new(bankslip_params)

    respond_to do |format|
      if @bankslip.save
        format.html { redirect_to @bankslip, notice: 'Bankslip was successfully created.' }
        format.json { render :show, status: :created, location: @bankslip }
      else
        format.html { render :new }
        format.json { render json: @bankslip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bankslips/1
  # PATCH/PUT /bankslips/1.json
  def update
    respond_to do |format|
      if @bankslip.update(bankslip_params)
        format.html { redirect_to @bankslip, notice: 'Bankslip was successfully updated.' }
        format.json { render :show, status: :ok, location: @bankslip }
      else
        format.html { render :edit }
        format.json { render json: @bankslip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bankslips/1
  # DELETE /bankslips/1.json
  def destroy
    @bankslip.destroy
    respond_to do |format|
      format.html { redirect_to bankslips_url, notice: 'Bankslip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bankslip
      @bankslip = Bankslip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bankslip_params
      params.require(:bankslip).permit(:exad_name, :ddate, :amount, :aname, :fname, :cnic, :bank_id, :department_id, :purpose_id)
    end
end
