class ContactsController < ApplicationController
  def new
      @contact = Contact.new(contact_params)
  end
  
  def create
      @contact = Contact.new(contact_params)
      if @contact.save
          redirect_to new_contact_path
      else
          render :new
      end
   end
end
