class Dashboard::Data::TechExperienceController < ApplicationController
  before_action :set_person
  before_action :set_resume
  before_action :set_work_experience
  before_action :set_tech_experience, only: %i[edit update destroy]
  before_action :prepare_technologies, only: %i[new create edit update]

  def index
    @tech_experiences = @work_experience.tech_experience.includes(:technology).all
  end

  def new
    @tech_experience = @work_experience.tech_experience.build
  end

  def create
    @tech_experience = @work_experience.tech_experience.build(tech_experience_params)

    render :new unless @tech_experience.save
  end

  def edit; end

  def update
    render :edit unless @tech_experience.update(tech_experience_params)
  end

  def destroy
    @tech_experience.destroy
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_resume
    @resume = @person.resumes.find(params[:resume_id])
  end

  def set_work_experience
    @work_experience = @resume.experience.find(params[:experience_id])
  end

  def set_tech_experience
    @tech_experience = @work_experience.tech_experience.includes(:technology).find(params[:id])
  end

  def prepare_technologies
    @technologies = Technology.all
  end

  def tech_experience_params
    params.require(:data_tech_experience).permit(:version, :technology_id)
  end
end
