class RailscareersController < ApplicationController
  before_action :set_railscareer, only: [:show, :edit, :update, :destroy]

  # GET /railscareers
  # GET /railscareers.json
  def index
    @railscareers = Railscareer.all
  end

  # GET /railscareers/1
  # GET /railscareers/1.json
  def show
   # @railscareer = Railscareer.find(railscarer_params)
    respond_to do |format|
      format.html
      format.json{ render :json => @railscareer }
  end
end

  # GET /railscareers/new
  def new
    @railscareer = Railscareer.new
  end

  # GET /railscareers/1/edit
  def edit
  end

  # POST /railscareers
  # POST /railscareers.json
  def create
    @railscareer = Railscareer.new(railscareer_params)

    respond_to do |format|
      if @railscareer.save
        format.html { redirect_to @railscareer, notice: 'Railscareer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @railscareer }
      else
        format.html { render action: 'new' }
        format.json { render json: @railscareer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /railscareers/1
  # PATCH/PUT /railscareers/1.json
  def update
    respond_to do |format|
      if @railscareer.update(railscareer_params)
        format.html { redirect_to @railscareer, notice: 'Railscareer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @railscareer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /railscareers/1
  # DELETE /railscareers/1.json
  def destroy
    @railscareer.destroy
    respond_to do |format|
      format.html { redirect_to railscareers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_railscareer
      @railscareer = Railscareer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def railscareer_params
      params.require(:railscareer).permit(:name, :content)
    end
end
