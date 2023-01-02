class DesignsController < ApplicationController
  before_action :set_design, only: %i[ show edit update destroy ]

  # GET /designs or /designs.json
  def index
    @designs = Design.all
  end

  # GET /designs/1 or /designs/1.json
  def show
  end

  # GET /designs/new
  def new
    @design = Design.new
  end

  # GET /designs/1/edit
  def edit
  end

  # POST /designs or /designs.json
  def create
    @product = Product.find(params[:product_id])
    @design = Design.new(design_params)
    @design.product = @product
    respond_to do |format|
      if @design.save
        format.html { redirect_to @product, notice: "Design was successfully created." }
        format.json { render :show, status: :created, location: @design }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /designs/1 or /designs/1.json
  def update
    respond_to do |format|
      if @design.update(design_params)
        format.html { redirect_to design_url(@design), notice: "Design was successfully updated." }
        format.json { render :show, status: :ok, location: @design }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @design.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /designs/1 or /designs/1.json
  def destroy
    @design.destroy

    respond_to do |format|
      format.html { redirect_to designs_url, notice: "Design was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_design
      @design = Design.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def design_params
      params.require(:design).permit(:product_id, :sales, :design_number)
    end
end
