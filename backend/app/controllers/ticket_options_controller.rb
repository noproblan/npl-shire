class TicketOptionsController < ApplicationController
  before_action :set_ticket_option, only: %i[show edit update destroy]

  # GET /ticket_options
  # GET /ticket_options.json
  def index
    @ticket_options = TicketOption.all
  end

  # GET /ticket_options/1
  # GET /ticket_options/1.json
  def show; end

  # GET /ticket_options/new
  def new
    @ticket_option = TicketOption.new
  end

  # GET /ticket_options/1/edit
  def edit; end

  # POST /ticket_options
  # POST /ticket_options.json
  def create
    @ticket_option = TicketOption.new(ticket_option_params)

    respond_to do |format|
      if @ticket_option.save
        format.html { redirect_to @ticket_option, notice: 'Ticket option was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_option }
      else
        format.html { render :new }
        format.json { render json: @ticket_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_options/1
  # PATCH/PUT /ticket_options/1.json
  def update
    respond_to do |format|
      if @ticket_option.update(ticket_option_params)
        format.html { redirect_to @ticket_option, notice: 'Ticket option was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_option }
      else
        format.html { render :edit }
        format.json { render json: @ticket_option.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_options/1
  # DELETE /ticket_options/1.json
  def destroy
    @ticket_option.destroy
    respond_to do |format|
      format.html { redirect_to ticket_options_url, notice: 'Ticket option was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ticket_option
    @ticket_option = TicketOption.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ticket_option_params
    params.require(:ticket_option).permit(:name, :price, :ticket_id)
  end
end
