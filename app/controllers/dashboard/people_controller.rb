class Dashboard::PeopleController < DashboardController
  before_action :set_person, only: %i[show edit update delete destroy]

  def index
    @people = Person.all
  end

  def show; end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    render :new unless @person.save
  end

  def edit; end

  def update
    render :edit unless @person.update(person_params)
  end

  def destroy
    @person.destroy
  end

  private

  def set_person
    @person = Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:name, :avatar)
  end
end
