class MapsController < ApplicationController
  def index
    @maps = Map.all

    render("maps/index.html.erb")
  end

  def show
    @map = Map.find(params[:id])
    
    render("maps/show.html.erb")
  end

  def new
    @map = Map.new

    render("maps/new.html.erb")
  end

  def create
    @map = Map.new

    @map.title = params[:title]
    @map.address = params[:address]
    @map.latitude = params[:latitude]
    @map.longitude = params[:longitude]
    @map.visited_by = params[:visited_by]

    save_status = @map.save

    if save_status == true
      redirect_to("/maps/#{@map.id}", :notice => "Map created successfully.")
    else
      render("maps/new.html.erb")
    end
  end

  def edit
    @map = Map.find(params[:id])

    render("maps/edit.html.erb")
  end

  def update
    @map = Map.find(params[:id])

    @map.title = params[:title]
    @map.address = params[:address]
    @map.latitude = params[:latitude]
    @map.longitude = params[:longitude]
    @map.visited_by = params[:visited_by]

    save_status = @map.save

    if save_status == true
      redirect_to("/maps/#{@map.id}", :notice => "Map updated successfully.")
    else
      render("maps/edit.html.erb")
    end
  end

  def destroy
    @map = Map.find(params[:id])

    @map.destroy

    if URI(request.referer).path == "/maps/#{@map.id}"
      redirect_to("/", :notice => "Map deleted.")
    else
      redirect_to(:back, :notice => "Map deleted.")
    end
  end
end

