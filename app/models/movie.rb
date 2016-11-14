class Movie < ApplicationRecord
  belongs_to :director, :class_name => "Director", :foreign_key => "director_id"
  has_many :characters, :class_name => "Character", :foreign_key => "movie_id"

  validates :director_id, :presence => true
  validates :title, :presence => true, :uniqueness => { scope: :year }
  validates :year, :numericality => { greater_than: 1870, less_than: 2050 }
  validates :duration, :numericality => { greater_than: 0, less_than: 2764800 }

end
