class TransactionsController < ApplicationController
  before_action :set_transaction, only: [:show, :edit, :update, :destroy, :change_status, :accept]

  # GET /transactions
  # GET /transactions.json
  def index
    @transactions = policy_scope(Transaction).order(updated_at: :desc)
    @proposed_transactions = policy_scope(Transaction).where(status: 0).order(updated_at: :desc)
    @accepted_transactions = policy_scope(Transaction).where(status: 1).order(updated_at: :desc)
    @removed_transactions = policy_scope(Transaction).where(status: 2).order(updated_at: :desc)

    @entries = current_user.entries

    @transactions_on_map = Transaction.where.not(latitude: nil, longitude: nil)

    @hash = Gmaps4rails.build_markers(@transactions_on_map) do |transaction, marker|
      marker.lat transaction.latitude
      marker.lng transaction.longitude
      position = 36
      if transaction.status == "proposed"
        marker.picture({
          "url": "http://res.cloudinary.com/dwag6dz8c/image/upload/c_scale,w_36/v1504115223/AirbarterLogo_t9ou5v.png",
          "width":  position,
          "height": position
        })
      elsif transaction.status == "accepted"
        marker.picture({
          "url": "http://res.cloudinary.com/dwag6dz8c/image/upload/c_scale,w_36/v1504110112/free-map-marker-icon-dark_aizsw1.png",
          "width":  position,
          "height": position
        })
      else
        marker.picture({
          "url": "http://res.cloudinary.com/dwag6dz8c/image/upload/c_scale,w_36/v1504110112/free-map-marker-icon-red_dsp909.png",
          "width":  position,
          "height": position
        })
      end
      marker.infowindow render_to_string(partial: "/transactions/map_box", locals: { transaction: transaction })
    end

  end

  # GET /transactions/1
  # GET /transactions/1.json
  def show
    @transaction_coordinates = { lat: @transaction.latitude, lng: @transaction.longitude }
    @entries = current_user.entries
    @proposed_by_user = @transaction.proposed_by_user
  end

  # GET /transactions/new
  def new
    @transaction = Transaction.new
    @transaction.proposed_product = Product.find(params[:proposed_product_id].to_i) if params[:proposed_product_id]
    @transaction.proposed_product_quantity = params[:proposed_product_quantity] if params[:proposed_product_quantity]
    @transaction.wanted_product = Product.find(params[:wanted_product_id].to_i) if params[:wanted_product_id]
    @transaction.address = current_user.address
    authorize @transaction
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
    authorize @transaction

    respond_to do |format|
      if @transaction.save
        format.html { redirect_to transactions_path, notice: t('.notice') }
        format.json { render :show, status: :created, location: @transaction }
        format.js
      else
        # I deleted raise, because otherwise if we type something wrong, error page open.
        format.html { render :new }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /transactions/1
  # PATCH/PUT /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @transaction, notice: t('.notice') }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def accept
    @transaction.accepted_by_user = current_user
    Entry.remove_from_inventory(@transaction.proposed_by_user,@transaction.proposed_product,@transaction.proposed_product_quantity)
    Entry.add_to_inventory(@transaction.proposed_by_user,@transaction.wanted_product,@transaction.wanted_product_quantity)
    Entry.add_to_inventory(@transaction.accepted_by_user,@transaction.proposed_product,@transaction.proposed_product_quantity)
    Entry.remove_from_inventory(@transaction.accepted_by_user,@transaction.wanted_product,@transaction.wanted_product_quantity)
    @transaction.change_status!(params[:status])
    authorize @transaction
    redirect_to transactions_path
  end

  def change_status
    @transaction.change_status!(params[:status])
    authorize @transaction
    redirect_to transactions_path
  end

  # DELETE /transactions/1
  # DELETE /transactions/1.json
  def destroy
    # @transaction.change_status!(:removed)
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: t('.notice') }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction
      @transaction = Transaction.find(params[:id])
      authorize @transaction
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def transaction_params
      params.require(:transaction).permit(:proposed_product_id, :proposed_product_quantity,
        :proposed_by_user_id, :wanted_product_id, :wanted_product_quantity, :accepted_by_user_id,
        :status, :address, :longitude, :latitude, :description, photos: [])
    end
end
