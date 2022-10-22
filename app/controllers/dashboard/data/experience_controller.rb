class Dashboard::Data::ExperienceController < DashboardController
  before_action :set_person
  before_action :set_resume
  before_action :set_work_experience, only: %i[edit update destroy]
  before_action :prepare_companies, only: %i[new create edit update]

  def index
    @work_experiences = @resume.experience.includes(:company).all
  end

  def new
    @work_experience = @resume.experience.build
  end

  def create
    @work_experience = @resume.experience.build(work_experience_params)

    render :new unless @work_experience.save
  end

  def edit; end

  def update
    render :edit unless @work_experience.update(work_experience_params)
  end

  def destroy
    @work_experience.destroy
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_resume
    @resume = @person.resumes.find(params[:resume_id])
  end

  def set_work_experience
    @work_experience = @resume.experience.includes(:company).find(params[:id])
  end

  def prepare_companies
    @companies = Company.all
  end

  def work_experience_params
    params.require(:data_work_experience).permit(:from, :to, :description, :company_id)
  end
end
