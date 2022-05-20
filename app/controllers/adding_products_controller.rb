class AddingProductsController < ApplicationController
  before_action :set_adding_product, only: %i[ show edit update destroy ]

  # GET /adding_products or /adding_products.json
  def index
    @adding_products = AddingProduct.all
  end

  # GET /adding_products/1 or /adding_products/1.json
  def show
  end

  # GET /adding_products/new
  def new
    @adding_product = AddingProduct.new
  end

  # GET /adding_products/1/edit
  def edit
  end

  # POST /adding_products or /adding_products.json
  def create
    @adding_product = AddingProduct.new(adding_product_params)

    respond_to do |format|
      if @adding_product.save
        format.html { redirect_to adding_product_url(@adding_product), notice: "Adding product was successfully created." }
        format.json { render :show, status: :created, location: @adding_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @adding_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adding_products/1 or /adding_products/1.json
  def update
    respond_to do |format|
      if @adding_product.update(adding_product_params)
        format.html { redirect_to adding_product_url(@adding_product), notice: "Adding product was successfully updated." }
        format.json { render :show, status: :ok, location: @adding_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @adding_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adding_products/1 or /adding_products/1.json
  def destroy
    @adding_product.destroy

    respond_to do |format|
      format.html { redirect_to adding_products_url, notice: "Adding product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_adding_product
    @adding_product = AddingProduct.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def adding_product_params
    params.require(:adding_product).permit(:name, :description, :image)
  end
end
