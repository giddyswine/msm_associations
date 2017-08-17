class ShiptolocationsController < ApplicationController
  def index
    
    @q = Shiptolocation.ransack(params[:q])
    @shiptolocations = @q.result.page(params[:page]).per(30)    

    render("shiptolocations/index.html.erb")
  end

  def show
    @shiptolocation = Shiptolocation.find(params[:id])

    render("shiptolocations/show.html.erb")
  end

  def new
    @shiptolocation = Shiptolocation.new

    render("shiptolocations/new.html.erb")
  end

  def create
    @shiptolocation = Shiptolocation.new

    @shiptolocation.state = params[:state]
    @shiptolocation.county = params[:county]
    @shiptolocation.city = params[:city]
    @shiptolocation.shiptonumber = params[:shiptonumber]
    @shiptolocation.shiptoname = params[:shiptoname]
    @shiptolocation.nickname = params[:nickname]
    @shiptolocation.parent = params[:parent]
    @shiptolocation.nh3 = params[:nh3]
    @shiptolocation.uan = params[:uan]
    @shiptolocation.urea = params[:urea]
    @shiptolocation.an = params[:an]
    @shiptolocation.truck = params[:truck]
    @shiptolocation.rail = params[:rail]
    @shiptolocation.unittrain = params[:unittrain]
    @shiptolocation.railline = params[:railline]
    @shiptolocation.barge = params[:barge]
    @shiptolocation.nh3storage = params[:nh3storage]
    @shiptolocation.uanstorage = params[:uanstorage]
    @shiptolocation.ureastorage = params[:ureastorage]
    @shiptolocation.anstorage = params[:anstorage]
    @shiptolocation.nh32015 = params[:nh32015]
    @shiptolocation.nh32016 = params[:nh32016]
    @shiptolocation.nh32017 = params[:nh32017]
    @shiptolocation.uan2015 = params[:uan2015]
    @shiptolocation.uan2016 = params[:uan2016]
    @shiptolocation.uan2017 = params[:uan2017]
    @shiptolocation.urea2015 = params[:urea2015]
    @shiptolocation.urea2016 = params[:urea2016]
    @shiptolocation.urea2017 = params[:urea2017]
    @shiptolocation.an2015 = params[:an2015]
    @shiptolocation.an2016 = params[:an2016]
    @shiptolocation.an2017 = params[:an2017]

    save_status = @shiptolocation.save

    if save_status == true
      redirect_to("/shiptolocations/#{@shiptolocation.id}", :notice => "Shiptolocation created successfully.")
    else
      render("shiptolocations/new.html.erb")
    end
  end

  def edit
    @shiptolocation = Shiptolocation.find(params[:id])

    render("shiptolocations/edit.html.erb")
  end

  def update
    @shiptolocation = Shiptolocation.find(params[:id])

    @shiptolocation.state = params[:state]
    @shiptolocation.county = params[:county]
    @shiptolocation.city = params[:city]
    @shiptolocation.shiptonumber = params[:shiptonumber]
    @shiptolocation.shiptoname = params[:shiptoname]
    @shiptolocation.nickname = params[:nickname]
    @shiptolocation.parent = params[:parent]
    @shiptolocation.nh3 = params[:nh3]
    @shiptolocation.uan = params[:uan]
    @shiptolocation.urea = params[:urea]
    @shiptolocation.an = params[:an]
    @shiptolocation.truck = params[:truck]
    @shiptolocation.rail = params[:rail]
    @shiptolocation.unittrain = params[:unittrain]
    @shiptolocation.railline = params[:railline]
    @shiptolocation.barge = params[:barge]
    @shiptolocation.nh3storage = params[:nh3storage]
    @shiptolocation.uanstorage = params[:uanstorage]
    @shiptolocation.ureastorage = params[:ureastorage]
    @shiptolocation.anstorage = params[:anstorage]
    @shiptolocation.nh32015 = params[:nh32015]
    @shiptolocation.nh32016 = params[:nh32016]
    @shiptolocation.nh32017 = params[:nh32017]
    @shiptolocation.uan2015 = params[:uan2015]
    @shiptolocation.uan2016 = params[:uan2016]
    @shiptolocation.uan2017 = params[:uan2017]
    @shiptolocation.urea2015 = params[:urea2015]
    @shiptolocation.urea2016 = params[:urea2016]
    @shiptolocation.urea2017 = params[:urea2017]
    @shiptolocation.an2015 = params[:an2015]
    @shiptolocation.an2016 = params[:an2016]
    @shiptolocation.an2017 = params[:an2017]

    save_status = @shiptolocation.save

    if save_status == true
      redirect_to("/shiptolocations/#{@shiptolocation.id}", :notice => "Shiptolocation updated successfully.")
    else
      render("shiptolocations/edit.html.erb")
    end
  end

  def destroy
    @shiptolocation = Shiptolocation.find(params[:id])

    @shiptolocation.destroy

    if URI(request.referer).path == "/shiptolocations/#{@shiptolocation.id}"
      redirect_to("/", :notice => "Shiptolocation deleted.")
    else
      redirect_to(:back, :notice => "Shiptolocation deleted.")
    end
  end
end
