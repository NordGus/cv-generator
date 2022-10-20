class Dashboard::Data::EducationController < DashboardController
  before_action :set_person
  before_action :set_resume
  before_action :set_education, only: %i[edit update destroy]

  def index
    @education_history = @resume.education_history.all
  end

  def new
    @education = @resume.education_history.build
  end

  def create
    @education = @resume.education_history.build(education_params)

    render :new unless @education.save
  end

  def edit; end

  def update
    render :edit unless @education.update(education_params)
  end

  def destroy
    @education.destroy
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_resume
    @resume = @person.resumes.find(params[:resume_id])
  end

  def set_education
    @education = @resume.education_history.find(params[:id])
  end

  def education_params
    params.require(:data_education).permit(:title, :institution, :date)
  end
end
