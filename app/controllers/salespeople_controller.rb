class SalespeopleController < ApplicationController
  def index
    @salespeople = Salesperson.all
    @userfirstname = current_user.username
    render("salespeople/index.html.erb")
  end

  def show
    @salesperson = Salesperson.find(params[:id])

    render("salespeople/show.html.erb")
  end
  
  def show2
    @salesperson = Salesperson.find(params[:id])

    render("salespeople/show2.html.erb")
  end

  def new
    @salesperson = Salesperson.new

    render("salespeople/new.html.erb")
  end

  def create
    @salesperson = Salesperson.new

    @salesperson.salesperson = params[:salesperson]

    save_status = @salesperson.save

    if save_status == true
      redirect_to("/salespeople/#{@salesperson.id}", :notice => "Salesperson created successfully.")
    else
      render("salespeople/new.html.erb")
    end
  end

  def edit
    @salesperson = Salesperson.find(params[:id])

    render("salespeople/edit.html.erb")
  end

  def update
    @salesperson = Salesperson.find(params[:id])

    @salesperson.salesperson = params[:salesperson]

    save_status = @salesperson.save

    if save_status == true
      redirect_to("/salespeople/#{@salesperson.id}", :notice => "Salesperson updated successfully.")
    else
      render("salespeople/edit.html.erb")
    end
  end

  def destroy
    @salesperson = Salesperson.find(params[:id])

    @salesperson.destroy

    if URI(request.referer).path == "/salespeople/#{@salesperson.id}"
      redirect_to("/", :notice => "Salesperson deleted.")
    else
      redirect_to(:back, :notice => "Salesperson deleted.")
    end
  end
end
