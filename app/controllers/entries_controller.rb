class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  # GET /entries
  # GET /entries.json
  def index
    @entries = policy_scope(Entry)
    @my_entries = @entries.select{ |entry|  entry.user_id == current_user.id  }
    @other_entries = @entries.select{ |entry|  entry.user_id != current_user.id  }
    @entry = Entry.new
  end

  # GET /entries/1
  # GET /entries/1.json
  def show
  end

  # GET /entries/new
  def new
    @entry = Entry.new
    @entry.user_id = params[:user_id] if params[:user_id]
    @entry.product_id = params[:product_id] if params[:product_id]
    authorize @entry
  end

  # GET /entries/1/edit

  # POST /entries
  # POST /entries.json
  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    authorize @entry

    if @entry.save
      respond_to do |format|
        format.html { redirect_to entry_path(@entry), notice: t('.notice') }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

  def edit
  end
  # PATCH/PUT /entries/1
  # PATCH/PUT /entries/1.json
  def update
    if @entry.update(entry_params)
      redirect_to entries_path , notice:  t('.notice')
    else
      render :edit
    end
  end


  # DELETE /entries/1
  # DELETE /entries/1.json
  def destroy
    @entry.destroy
    respond_to do |format|
      format.html { redirect_to entries_url, notice: t('.notice') }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_entry
      @entry = Entry.find(params[:id])
      authorize @entry
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def entry_params
      params.require(:entry).permit(:quantity, :user_id, :product_id)
    end
end
