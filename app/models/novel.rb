class Novel < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :genres

  def self.search(search_term)
    where("novels.title ILIKE ? OR novels.plot ILIKE ?",
      "%#{search_term}%", "%#{search_term}%")
  end

end
