class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      session[:id] = @contact.id
      redirect_to :root
    else
      redirect_to projects_path
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :comment)
  end
end
