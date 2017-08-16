class LocationsController < ApplicationController
  def index
    @locations = Location.all

    render("locations/index.html.erb")
  end

  def show
    @url_base= "https://maps.googleapis.com/maps/api/geocode/json?address="
    @url_input=@street_address.gsub(" ","+")
    @url= "#{@url_base}#{@url_input}"
    @raw_data=open(@url).read
    @jsoned=JSON[@raw_data]
    @results=@jsoned["results"]
    @first=@results[0]
    @geometry=@first["geometry"]
    @googlelocation = @geometry["location"]

    @location = Location.find(params[:id])

    render("locations/show.html.erb")
  end

  def new
    @location = Location.new

    render("locations/new.html.erb")
  end

  def create
    @location = Location.new

    @location.company_id = params[:company_id]
    @location.city = params[:city]
    @location.state = params[:state]

    save_status = @location.save

    if save_status == true
      redirect_to("/locations/#{@location.id}", :notice => "Location created successfully.")
    else
      render("locations/new.html.erb")
    end
  end

  def edit
    @location = Location.find(params[:id])

    render("locations/edit.html.erb")
  end

  def update
    @location = Location.find(params[:id])

    @location.company_id = params[:company_id]
    @location.city = params[:city]
    @location.state = params[:state]

    save_status = @location.save

    if save_status == true
      redirect_to("/locations/#{@location.id}", :notice => "Location updated successfully.")
    else
      render("locations/edit.html.erb")
    end
  end

  def destroy
    @location = Location.find(params[:id])

    @location.destroy

    if URI(request.referer).path == "/locations/#{@location.id}"
      redirect_to("/", :notice => "Location deleted.")
    else
      redirect_to(:back, :notice => "Location deleted.")
    end
  end
end
