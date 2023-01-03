class StarController < ApplicationController
  def index
    @stars = Star.all
  end
  def show
  end

  # GET /sizes/new
  def new
    @star = Star.new
  end

  # GET /sizes/1/edit
  def edit
  end

  # POST /sizes or /sizes.json
  def create
    @product = Product.find(params[:product_id])
    @star = Star.new(star_params)
    @star.product = @product


    respond_to do |format|
      if @star.save
        format.html { redirect_to @stars, notice: "Size was successfully created." }
        format.json { render :show, status: :created, location: @star }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @star.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sizes/1 or /sizes/1.json
  def update
    respond_to do |format|
      if @star.update(size_params)
        format.html { redirect_to star_url(@star), notice: "Size was successfully updated." }
        format.json { render :show, status: :ok, location: @star }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @star.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sizes/1 or /sizes/1.json
  def destroy
    @star.destroy

    respond_to do |format|
      format.html { redirect_to stars_url, notice: "Size was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_star
    @star = Star.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def star_params
    params.require(:star).permit(:product_id, :user_id)
  end
end
