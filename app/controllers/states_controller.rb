class StatesController < ApplicationController
  def index
    @states = State.all

    render("states/index.html.erb")
  end

  def show
    @state = State.find(params[:id]).state

    render("states/show.html.erb")
  end

  def new
    @state = State.new

    render("states/new.html.erb")
  end

  def create
    @state = State.new

    @state.state = params[:state]

    save_status = @state.save

    if save_status == true
      redirect_to("/states/#{@state.id}", :notice => "State created successfully.")
    else
      render("states/new.html.erb")
    end
  end

  def edit
    @state = State.find(params[:id])

    render("states/edit.html.erb")
  end

  def update
    @state = State.find(params[:id])

    @state.state = params[:state]
    @state.name = params[:name]

    save_status = @state.save

    if save_status == true
      redirect_to("/states/#{@state.id}", :notice => "State updated successfully.")
    else
      render("states/edit.html.erb")
    end
  end

  def destroy
    @state = State.find(params[:id])

    @state.destroy

    if URI(request.referer).path == "/states/#{@state.id}"
      redirect_to("/", :notice => "State deleted.")
    else
      redirect_to(:back, :notice => "State deleted.")
    end
  end
end
