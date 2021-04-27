class LoansController < ApplicationController
  before_action :set_loan, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: %i[index]
  
  def index
    @loans = Loan.all
    @products = Product.all
  end

  def edit  
    @customers = Customer.all 
    @products = Product.pluck(:name_product, :id) 
    @loan.loan_products.build   
  end

  def show
  end

  def new 
    @customers = Customer.all 
    @loan = Loan.new 
    @products = Product.pluck(:name_product, :id)
    @loan.loan_products.build 
  end
  
  def create
    @loan = Loan.new(loan_params)
    @products = Product.pluck(:name_product, :id)
   
    respond_to do |format|
      if @loan.save
        format.html { redirect_to @loan, notice: "loan was successfully created." }
        format.json { render :show, status: :created, location: @loan }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @loan.update(loan_params)
        format.html { redirect_to @loan, notice: "loan was successfully updated." }
        format.json { render :show, status: :ok, location: @loan }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @loan.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy 
    @loan.destroy
    respond_to do |format|
      format.html { redirect_to loans_url, notice: "Todo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def form_product
    @products = Product.pluck(:name_product, :id)
    @loan = Loan.new
    @loan.loan_products.build
    respond_to do |format|
      format.js
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_loan
    @loan = Loan.find(params[:id])
  end
  # Only allow a list of trusted parameters through.
  def loan_params
    params.require(:loan).permit(:customer_id, 
   loan_products_attributes: [:product_quantity, :product_price, :loan_id, :product_id])
  end
end