class PurchasesController < ApplicationController
  before_filter :define_constants
  # GET /products
  # GET /products.json
  def index
    @purchases = @product.purchase.order
    respond_to do |format|
      format.html # index.html.erb
       format.json { render json: @purchases }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @purchase = @product.purchase.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purchase }
    end
  end

  # GET /products/1/edit
  def edit
     @purchase =  @product.purchase.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
 
    @purchase = @product.purchase.build(params[:purchase])
    
    respond_to do |format|
      if @purchase.save
        format.html { redirect_to product_purchases_url(@purchase.product_id), notice: 'Product stock was successfully created.' }
         #format.json { render json: @purchase, status: :created, location: @product }
      else
        format.html { render action: "new" }
         format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @purchase = @product.purchase.find(params[:id])

    respond_to do |format|
      if @purchase.update_attributes(params[:purchase])
         format.html { redirect_to product_purchases_url(@purchase.product_id), notice: 'Product stock was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purchase.errors, status: :unprocessable_entity }
      end
    end
  end
 
  def define_constants
    @product = Product.find(params[:product_id])    
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @purchase = @product.purchase.find(params[:id])
    @purchase.destroy

    respond_to do |format|
      format.html { redirect_to product_purchases_url(@purchase.product_id) }
      format.json { head :no_content }
    end
  end
end
