class ErrandsController < ProtectedController
  before_action :set_errand, only: [:show, :update, :destroy]

  # GET /errands
  def index
    @errands = current_user.errands.all

    render json: @errands
  end

  # GET /errands/1
  def show
    render json: @errand
  end

  # POST /errands
  def create
    @errand = current_user.errands.build(errand_params)

    if @errand.save
      render json: @errand, status: :created, location: @errand
    else
      render json: @errand.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /errands/1
  def update
    if @errand.update(errand_params)
      render json: @errand
    else
      render json: @errand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /errands/1
  def destroy
    @errand.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_errand
      @errand = current_user.errands.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def errand_params
      params.require(:errand).permit(:errand_name, :location, :due_date, :due_time, :done_status)
    end
end
