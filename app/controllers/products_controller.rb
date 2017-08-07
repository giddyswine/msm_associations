class ProductsController < ApplicationController
  def index
    @products = Product.all

    render("products/index.html.erb")
  end

  def show
    @product = Product.find(params[:id])

    render("products/show.html.erb")
  end

  def new
    @product = Product.new

    render("products/new.html.erb")
  end

  def create
    @product = Product.new

    @product.name = params[:name]
    @product.ncontent = params[:ncontent]

    save_status = @product.save

    if save_status == true
      redirect_to("/products/#{@product.id}", :notice => "Product created successfully.")
    else
      render("products/new.html.erb")
    end
  end

  def edit
    @product = Product.find(params[:id])

    render("products/edit.html.erb")
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name]
    @product.ncontent = params[:ncontent]

    save_status = @product.save

    if save_status == true
      redirect_to("/products/#{@product.id}", :notice => "Product updated successfully.")
    else
      render("products/edit.html.erb")
    end
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    if URI(request.referer).path == "/products/#{@product.id}"
      redirect_to("/", :notice => "Product deleted.")
    else
      redirect_to(:back, :notice => "Product deleted.")
    end
  end
end
