class BlockchainsController < ApplicationController
  def index
    @blockchains = Blockchain.all

    render("blockchains/index.html.erb")
  end

  def show
    @blockchain = Blockchain.find(params[:id])

    render("blockchains/show.html.erb")
  end

  def new
    @salespeople = Salesperson.all
    @blockchain = Blockchain.new

    render("blockchains/new.html.erb")
  end

  def create
    @blockchain = Blockchain.new

    @blockchain.salesperson_id = params[:salesperson_id]
    @blockchain.product_id = params[:product_id]
    @blockchain.state = params[:state]
    @blockchain.city = params[:city]
    @blockchain.customer_id = params[:customer_id]
    @blockchain.company_id = params[:company_id]
    @blockchain.source_id = params[:source_id]
    @blockchain.price = params[:price]
    @blockchain.metric = params[:metric]
    @blockchain.tons = params[:tons]
    @blockchain.mode = params[:mode]
    @blockchain.terms = params[:terms]
    @blockchain.ship_start = params[:ship_start]
    @blockchain.completed = params[:completed]

    save_status = @blockchain.save

    if save_status == true
      redirect_to("/blockchains/#{@blockchain.id}", :notice => "Blockchain created successfully.")
    else
      render("blockchains/new.html.erb")
    end
  end

  def edit
    @blockchain = Blockchain.find(params[:id])

    render("blockchains/edit.html.erb")
  end

  def update
    @blockchain = Blockchain.find(params[:id])

    @blockchain.salesperson_id = params[:salesperson_id]
    @blockchain.product_id = params[:product_id]
    @blockchain.state = params[:state]
    @blockchain.city = params[:city]
    @blockchain.customer_id = params[:customer_id]
    @blockchain.company_id = params[:company_id]
    @blockchain.source_id = params[:source_id]
    @blockchain.price = params[:price]
    @blockchain.metric = params[:metric]
    @blockchain.tons = params[:tons]
    @blockchain.mode = params[:mode]
    @blockchain.terms = params[:terms]
    @blockchain.ship_start = params[:ship_start]
    @blockchain.completed = params[:completed]

    save_status = @blockchain.save

    if save_status == true
      redirect_to("/blockchains/#{@blockchain.id}", :notice => "Blockchain updated successfully.")
    else
      render("blockchains/edit.html.erb")
    end
  end

  def destroy
    @blockchain = Blockchain.find(params[:id])

    @blockchain.destroy

    if URI(request.referer).path == "/blockchains/#{@blockchain.id}"
      redirect_to("/", :notice => "Blockchain deleted.")
    else
      redirect_to(:back, :notice => "Blockchain deleted.")
    end
  end
end
