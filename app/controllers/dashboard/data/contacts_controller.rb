class Dashboard::Data::ContactsController < DashboardController
  before_action :set_person
  before_action :set_contact, only: %i[edit update destroy]

  def index
    @contacts = @person.contacts.all
  end

  def new
    @contact = @person.contacts.build
  end

  def create
    @contact = @person.contacts.build(contact_params)

    render :new unless @contact.save
  end

  def edit; end

  def update
    render :edit unless @contact.update(contact_params)
  end

  def destroy
    @contact.destroy
  end

  private

  def set_person
    @person = Person.find(params[:person_id])
  end

  def set_contact
    @contact = @person.contacts.find(params[:id])
  end

  def contact_params
    params.require(:data_contact).permit(:content, :link, :icon)
  end
end
