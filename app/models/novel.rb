class Novel < ActiveRecord::Base
  belongs_to :author
  has_and_belongs_to_many :genres

  def self.search(query)
    where("novels.title LIKE ? OR novels.plot LIKE ?",
      "%#{query}%", "%#{query}%")
  end

end
