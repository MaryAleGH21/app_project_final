class PaymentsController < ApplicationController
  before_action :set_payment, only: %i[ show edit update destroy ]
  before_action :set_customer, only: %i[ new create]

  # GET /payments or /payments.json
  def index
    @payments = Payment.includes([:customer]).all
  end

  # GET /payments/1 or /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @customers = Customer.all
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
    @customers = Customer.all
  end

  # POST /payments or /payments.json
  def create
    @payment = Payment.new(payment_params.merge(customer: @customer))
    respond_to do |format|
      if @payment.save
        format.html { redirect_to @payment, notice: "Payment was successfully created." }
        format.json { render :show, status: :created, location: @payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payments/1 or /payments/1.json
  def update
    respond_to do |format|
      if @payment.update(payment_params)
        format.html { redirect_to @payment, notice: "Payment was successfully updated." }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payments/1 or /payments/1.json
  def destroy
    @payment.destroy
    respond_to do |format|
      format.html { redirect_to payments_url, notice: "Payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    def set_customer
      @customer = Customer.find(params[:customer_id])
    end

    # Only allow a list of trusted parameters through.
    def payment_params
      params.require(:payment).permit(:balance_paid, :customer_id)
    end
end
