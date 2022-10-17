class Dashboard::TechnologiesController < DashboardController
  before_action :set_technology, only: %i[edit update]

  def index
    @technologies = Technology.all
  end

  def new
    @technology = Technology.new
  end

  def create
    @technology = Technology.new(technology_params)

    render :new unless @technology.save
  end

  def edit; end

  def update
    render :edit unless @technology.update(technology_params)
  end

  private

  def set_technology
    @technology = Technology.find(params[:id])
  end

  def technology_params
    params.require(:technology).permit(:name)
  end
end
