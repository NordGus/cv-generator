class Dashboard::CompaniesController < DashboardController
  before_action :set_company, only: %i[edit update]

  def index
    @companies = Company.all
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new(company_params)

    render :new unless @company.save
  end

  def edit; end

  def update
    render :edit unless @company.update(company_params)
  end

  private

  def set_company
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name, :avatar)
  end
end
