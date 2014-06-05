class Cliente < ActiveRecord::Base
def self.search(search)
    if search
     
      find(:all, :conditions => ['name LIKE ?', "%#{search.capitalize}%"])
    else
      find(:all)
    end
  end
end
