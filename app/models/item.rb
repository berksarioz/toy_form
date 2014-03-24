class Item < ActiveRecord::Base

  self.inheritance_column = nil


  def self.subclasses
    [Turkish, French, American]
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
