class Cliente < ActiveRecord::Base
   validates_length_of :telefone, :is => 10, :message => " - Deve ter dez digitos" 
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
