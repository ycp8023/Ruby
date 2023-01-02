class TransactionOrdersController < ApplicationController
  before_action :set_transaction_order, only: %i[ show edit update destroy ]

  # GET /transaction_orders or /transaction_orders.json
  def index
    @transaction_orders = TransactionOrder.all
  end

  # GET /transaction_orders/1 or /transaction_orders/1.json
  def show
  end

  # GET /transaction_orders/new
  def new
    @transaction_order = TransactionOrder.new
  end

  # GET /transaction_orders/1/edit
  def edit
  end

  # POST /transaction_orders or /transaction_orders.json
  def create
    @transaction_order = TransactionOrder.new(transaction_order_params)

    respond_to do |format|
      if @transaction_order.save
        format.html { redirect_to transaction_order_url(@transaction_order), notice: "Transaction order was successfully created." }
        format.json { render :show, status: :created, location: @transaction_order }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @transaction_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transaction_orders/1 or /transaction_orders/1.json
  def update
    respond_to do |format|
      if @transaction_order.update(transaction_order_params)
        format.html { redirect_to transaction_order_url(@transaction_order), notice: "Transaction order was successfully updated." }
        format.json { render :show, status: :ok, location: @transaction_order }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction_order.errors, status: :unprocessable_entity }
      end
    end
  end
  def accept
    @transaction_order.order_status="已收货"
  end
  # DELETE /transaction_orders/1 or /transaction_orders/1.json
  def destroy
    @transaction_order.destroy

    respond_to do |format|
      format.html { redirect_to transaction_orders_url, notice: "Transaction order was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_transaction_order
      @transaction_order = TransactionOrder.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def transaction_order_params
      params.require(:transaction_order).permit(:user_id, :cart_item_id, :delivery_address, :delivery_name, :delivery_phone, :delivery_postcode, :order_status)
    end
end
