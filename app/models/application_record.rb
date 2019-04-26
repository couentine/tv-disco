class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.search(search)
    where("name ILIKE ? OR specialty ILIKE ?", "%#{search.downcase}%", "%#{search.downcase}%")
  end
end
