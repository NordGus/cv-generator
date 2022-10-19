class Dashboard::Data::BiographiesController < DashboardController
  before_action :set_person
  before_action :set_resume
  before_action :set_biography, only: %i[show edit update]

  def show; end

  def create
    @biography = ::Data::Biography.create(resume: @resume, content: "Add an awesome biography...")
  end

  def edit; end

  def update
    render :edit unless @biography.update(biography_params)
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_resume
    @resume = @person.resumes.find(params[:resume_id])
  end

  def set_biography
    @biography = ::Data::Biography.find_by(resume_id: @resume.id, id: params[:id])
  end

  def biography_params
    params.require(:data_biography).permit(:content)
  end
end
