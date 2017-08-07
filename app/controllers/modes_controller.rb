class ModesController < ApplicationController
  def index
    @modes = Mode.all

    render("modes/index.html.erb")
  end

  def show
    @mode = Mode.find(params[:id])

    render("modes/show.html.erb")
  end

  def new
    @mode = Mode.new

    render("modes/new.html.erb")
  end

  def create
    @mode = Mode.new

    @mode.mode = params[:mode]

    save_status = @mode.save

    if save_status == true
      redirect_to("/modes/#{@mode.id}", :notice => "Mode created successfully.")
    else
      render("modes/new.html.erb")
    end
  end

  def edit
    @mode = Mode.find(params[:id])

    render("modes/edit.html.erb")
  end

  def update
    @mode = Mode.find(params[:id])

    @mode.mode = params[:mode]

    save_status = @mode.save

    if save_status == true
      redirect_to("/modes/#{@mode.id}", :notice => "Mode updated successfully.")
    else
      render("modes/edit.html.erb")
    end
  end

  def destroy
    @mode = Mode.find(params[:id])

    @mode.destroy

    if URI(request.referer).path == "/modes/#{@mode.id}"
      redirect_to("/", :notice => "Mode deleted.")
    else
      redirect_to(:back, :notice => "Mode deleted.")
    end
  end
end
