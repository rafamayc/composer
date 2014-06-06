class Cliente < ActiveRecord::Base
   validates_length_of :telefone, :is => 10, :message => "Telefone nao pode conter menos de 10 caracteres" 
   validates_presence_of :name, :message => "Preenchimento de Razao Social ou Nome Completo obrigatorio"
   validates_presence_of :contato, :message => "Preenchimento de Contato obrigatorio"
   validates_format_of :email,
                      :with => /\A[\w\._%-]+@[\w\.-]+\.[a-zA-Z]{2,4}\z/,
                      :if => Proc.new { |u| !u.email.nil? && !u.email.blank? },
                      :message => "Formato de email incorreto"
  def self.search(search)
    if search
     
      find(:all,:conditions => ['name LIKE ?', "%#{search.capitalize}%"],:order => "name")
    else
      find(:all,:order => "name")
    end
  end
  before_save :normalizar
  
  private
  def normalizar
    self.name.capitalize!
  end
  
end
