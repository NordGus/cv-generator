class Dashboard::Data::ResumesController < ApplicationController
  before_action :set_person
  before_action :set_resume, only: %i[show edit update destroy]

  def index
    @resumes = @person.resumes.all
  end

  def show; end

  def new
    @resume = @person.resumes.build
  end

  def create
    @resume = @person.resumes.build(resume_params)

    render :new unless @resume.save
  end

  def edit; end

  def update
    render :edit unless @resume.update(resume_params)
  end

  def destroy
    @resume.destroy
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_resume
    @resume = @person.resumes.find(params[:id])
  end

  def resume_params
    params.require(:data_resume).permit(:locale, :name)
  end
end
