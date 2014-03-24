class Item < ActiveRecord::Base

  self.inheritance_column = nil


  def self.subclasses
    [Turkish, French, American]
  end




  def self.search(search)
    search_condition = "%" + search.to_s + "%"
    find(:all, :conditions => ['title LIKE ? OR description LIKE ?', search_condition, search_condition])
  end
end
