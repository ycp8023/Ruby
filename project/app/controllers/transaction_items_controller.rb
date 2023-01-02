class TransactionItemsController < ApplicationController
  before_action :set_transaction_item, only: %i[ show edit update destroy ]

  # GET /transaction_items or /transaction_items.json
  def index
    @transaction_items = TransactionItem.all
  end

  # GET /transaction_items/1 or /transaction_items/1.json
  def show
  end

  # GET /transaction_items/new
  def new
    @transaction_item = TransactionItem.new
  end

  # GET /transaction_items/1/edit
  def edit
  end

  # POST /transaction_items or /transaction_items.json
  def create
    @transaction_order=TransactionOrder.find(params[:transaction_order_id])
    @transaction_item = TransactionItem.new(transaction_item_params)
    @transaction_item.transaction_order=@transaction_order

    respond_to do |format|
      if @transaction_item.save
        format.html { redirect_to @transaction_order, notice: "Transaction item was successfully added." }
        format.json { render :show, status: :created, location: @transaction_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaction_items/1 or /transaction_items/1.json
  def update
    respond_to do |format|
      if @transaction_item.update(transaction_item_params)
        format.html { redirect_to transaction_item_url(@transaction_item), notice: "Transaction item was successfully updated." }
        format.json { render :show, status: :ok, location: @transaction_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transaction_items/1 or /transaction_items/1.json
  def destroy
    @transaction_item.destroy

    respond_to do |format|
      format.html { redirect_to transaction_items_url, notice: "Transaction item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_item
      @transaction_item = TransactionItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_item_params
      params.require(:transaction_item).permit(:transaction_order_id, :product_id, :quantity, :price)
    end
end
