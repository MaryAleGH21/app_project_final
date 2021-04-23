class LoansController < ApplicationController
  before_action :set_loan, only: %i[ show edit update destroy ]
  before_action :authenticate_admin!, except: %i[ index]
  
  def index
    @loans = Loan.all
    @products = Product.all
  end

  def edit  
  end

  def show
  end

  def new 
    @loan = Loan.new 
    @products = Product.pluck(:name_product, :id)
    @products.each do
    @loan.loan_products.build
    end
  end
  
  def create
    @loan = Loan.new(loan_params)
    @products = Product.pluck(:name_product, :id)
   
    respond_to do |format|
      if @loan.save
        format.html { redirect_to @loan, notice: "loan was successfully created." }
        format.json { render :show, status: :created, location: @loan }
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