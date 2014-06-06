class Produto < ActiveRecord::Base
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
