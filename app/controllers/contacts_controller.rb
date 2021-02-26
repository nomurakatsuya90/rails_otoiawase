class ContactsController < ApplicationController
  def new
    @contact = Contact.new 
  end
  def create
    @contact = Contact.new(params.require(:contact).permit(:name, :email, :content))
    if @contact.save
    # if Contact.create(contact_params)  #これだとvalidationを捕まえられなかった
      redirect_to new_contact_path  #アドレスはcontacts/newになる
    else
      render :new  #アドレスがcontacts/になる
    end
  end
  # private    #要件2. アクションはnewとcreateのみとする　のため
  # def contact_params
  #   params.require(:contact).permit(:name, :email, :content)
  # end
end
