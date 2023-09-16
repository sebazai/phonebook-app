class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)

    redirect_to contact_path(@contact)
  end

  private
  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :phonenumber)
  end

end
