class CustomersController < ApplicationController
  
  def index
    @q = Customer.ransack(params[:q])
    @customers = @q.result.page(params[:page]).per(30)


    render("customers/index.html.erb")
  end

  def show
    @customer = Customer.find(params[:id])
    @id = Customer.find(params[:id]).promise_id
    @locations = Shiptolocation.where(parent: @id).select(:shiptoname, :shiptonumber, :city, :state, :id)
    @locations = @locations.uniq 
    render("customers/show.html.erb")
  end

  def show2
    @customer = Customer.find(params[:id])

    render("customers/show2.html.erb")
  end

  def new
    @customer = Customer.new

    render("customers/new.html.erb")
  end

  def create
    @customer = Customer.new

    @customer.promise_id = params[:promise_id]
    @customer.name = params[:name]
    @customer.short_name = params[:short_name]

    save_status = @customer.save

    if save_status == true
      redirect_to("/customers/#{@customer.id}", :notice => "Customer created successfully.")
    else
      render("customers/new.html.erb")
    end
  end

  def edit
    @customer = Customer.find(params[:id])

    render("customers/edit.html.erb")
  end

  def update
    @customer = Customer.find(params[:id])

    @customer.promise_id = params[:promise_id]
    @customer.name = params[:name]
    @customer.short_name = params[:short_name]

    save_status = @customer.save

    if save_status == true
      redirect_to("/customers/#{@customer.id}", :notice => "Customer updated successfully.")
    else
      render("customers/edit.html.erb")
    end
  end

  # def destroy
  #   @customer = Customer.find(params[:id])

  #   @customer.destroy

  #   if URI(request.referer).path == "/customers/#{@customer.id}"
  #     redirect_to("/", :notice => "Customer deleted.")
  #   else
  #     redirect_to(:back, :notice => "Customer deleted.")
  #   end
  # end
end
