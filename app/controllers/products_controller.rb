class ProductsController < ApplicationController
  before_action :set_product, only: [:edit, :update, :destroy, :show]

  def index
    @products = Product.all
    @product = Product.new
  end

  def show
    respond_to do |format|
      format.js { render layout: false }
      format.html { render :_show }
    end
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Todo was successfully created." }
        format.json { render :show, status: :created, location: @product }
        format.js
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.json { head :no_content }
        format.js
      else
        format.json { render json: @product.errors.full_messages, status: :unprocessable_entity }
        format.js { render :edit }
      end
    end
  end

  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Todo was successfully destroyed." }
      format.json { head :no_content }
      format.js
    end
  end

  private
  def product_params
    params.require(:product).permit(:name_product, :price)
  end

  def set_product
    @product = Product.find(params[:id])
  end
end
