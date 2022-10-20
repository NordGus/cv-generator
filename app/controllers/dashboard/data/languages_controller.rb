class Dashboard::Data::LanguagesController < ApplicationController
  before_action :set_person
  before_action :set_resume
  before_action :set_language, only: %i[edit update destroy]

  def index
    @languages = @resume.languages.all
  end

  def new
    @language = @resume.languages.build
  end

  def create
    @language = @resume.languages.build(language_params)

    render :new unless @language.save
  end

  def edit; end

  def update
    render :edit unless @language.update(language_params)
  end

  def destroy
    @language.destroy
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_resume
    @resume = @person.resumes.find(params[:resume_id])
  end

  def set_language
    @language = @resume.languages.find(params[:id])
  end

  def language_params
    params.require(:data_language).permit(:name, :level)
  end
end
