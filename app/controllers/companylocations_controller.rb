class CompanylocationsController < ApplicationController
  def index
    @companylocations = Companylocation.all

    render("companylocations/index.html.erb")
  end

  def show
    @companylocation = Companylocation.find(params[:id])

    render("companylocations/show.html.erb")
  end

  def new
    @companylocation = Companylocation.new

    render("companylocations/new.html.erb")
  end

  def create
    @companylocation = Companylocation.new

    @companylocation.company_id = params[:company_id]
    @companylocation.city = params[:city]
    @companylocation.state = params[:state]
    @companylocation.product_id = params[:product_id]
    @companylocation.capacity = params[:capacity]

    save_status = @companylocation.save

    if save_status == true
      redirect_to("/companylocations/#{@companylocation.id}", :notice => "Companylocation created successfully.")
    else
      render("companylocations/new.html.erb")
    end
  end

  def edit
    @companylocation = Companylocation.find(params[:id])

    render("companylocations/edit.html.erb")
  end

  def update
    @companylocation = Companylocation.find(params[:id])

    @companylocation.company_id = params[:company_id]
    @companylocation.city = params[:city]
    @companylocation.state = params[:state]
    @companylocation.product_id = params[:product_id]
    @companylocation.capacity = params[:capacity]

    save_status = @companylocation.save

    if save_status == true
      redirect_to("/companylocations/#{@companylocation.id}", :notice => "Companylocation updated successfully.")
    else
      render("companylocations/edit.html.erb")
    end
  end

  def destroy
    @companylocation = Companylocation.find(params[:id])

    @companylocation.destroy

    if URI(request.referer).path == "/companylocations/#{@companylocation.id}"
      redirect_to("/", :notice => "Companylocation deleted.")
    else
      redirect_to(:back, :notice => "Companylocation deleted.")
    end
  end
end
