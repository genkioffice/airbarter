class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy, :change_status]

  # GET /transactions
  # GET /transactions.json
  def index
    @transactions = Transaction.all
    @proposed_transactions = Transaction.where(status: 0).order(:proposed_by_user_id)
    @accepted_transactions = Transaction.where(status: 1).order(id: :desc)
    @removed_transactions = Transaction.where(status: 2).order(id: :desc)

    @transactions_on_map = Transaction.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@transactions_on_map) do |transaction, marker|
      marker.lat transaction.latitude
      marker.lng transaction.longitude
      marker.infowindow render_to_string(partial: "/transactions/map_box", locals: { transaction: transaction })
    end
  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
    @transaction_coordinates = { lat: @transaction.latitude, lng: @transaction.longitude }
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
    @transaction.proposed_by_user = params[:proposed_by_user_id] if params[:proposed_by_user_id]
    @transaction.proposed_product = params[:proposed_product_id] if params[:proposed_product_id]
    @transaction.wanted_product = params[:wanted_product_id] if params[:wanted_product_id]
  end

  # GET /transactions/1/edit
  def edit
  end

  # POST /transactions
  # POST /transactions.json
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.proposed_by_user = current_user
    @transaction.status = 0

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to transactions_path, notice: 'Transaction was successfully created.' }
        format.json { render :show, status: :created, location: @transaction }
      else
        raise
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1
  # PATCH/PUT /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def change_status
    @transaction.accepted_by_user = current_user
    @transaction.change_status!(params[:status])
    redirect_to transactions_path
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    # @transaction.change_status!(:removed)
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:proposed_product_id, :proposed_product_quantity,
        :proposed_by_user_id, :wanted_product_id, :wanted_product_quantity, :accepted_by_user_id,
        :status, :address, :longitude, :latitude)
    end
end
