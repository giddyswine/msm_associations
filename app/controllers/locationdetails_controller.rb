class LocationdetailsController < ApplicationController
  def index
    @locationdetails = Locationdetail.all

    render("locationdetails/index.html.erb")
  end

  def show
    @locationdetail = Locationdetail.find(params[:id])

    render("locationdetails/show.html.erb")
  end

  def new
    @locationdetail = Locationdetail.new

    render("locationdetails/new.html.erb")
  end

  def create
    @locationdetail = Locationdetail.new

    @locationdetail.company_id = params[:company_id]
    @locationdetail.location_id = params[:location_id]
    @locationdetail.product_id = params[:product_id]
    @locationdetail.capacity = params[:capacity]

    save_status = @locationdetail.save

    if save_status == true
      redirect_to("/locationdetails/#{@locationdetail.id}", :notice => "Locationdetail created successfully.")
    else
      render("locationdetails/new.html.erb")
    end
  end

  def edit
    @locationdetail = Locationdetail.find(params[:id])

    render("locationdetails/edit.html.erb")
  end

  def update
    @locationdetail = Locationdetail.find(params[:id])

    @locationdetail.company_id = params[:company_id]
    @locationdetail.location_id = params[:location_id]
    @locationdetail.product_id = params[:product_id]
    @locationdetail.capacity = params[:capacity]

    save_status = @locationdetail.save

    if save_status == true
      redirect_to("/locationdetails/#{@locationdetail.id}", :notice => "Locationdetail updated successfully.")
    else
      render("locationdetails/edit.html.erb")
    end
  end

  def destroy
    @locationdetail = Locationdetail.find(params[:id])

    @locationdetail.destroy

    if URI(request.referer).path == "/locationdetails/#{@locationdetail.id}"
      redirect_to("/", :notice => "Locationdetail deleted.")
    else
      redirect_to(:back, :notice => "Locationdetail deleted.")
    end
  end
end
