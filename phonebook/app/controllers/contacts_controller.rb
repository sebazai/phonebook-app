class ContactsController < ApplicationController
  before_action :current_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)

    redirect_to contact_path(@contact)
  end

  def edit
  end

  def update
    @contact.update

    redirect_to contact_path(@contact)
  end

  def destroy
    @contact.destroy

    redirect_to contacts_path
  end

  private
  def contact_params
    params.require(:contact).permit(:firstname, :lastname, :phonenumber)
  end

  def current_contact
    @contact = Contact.find(params[:id])
  end

end
