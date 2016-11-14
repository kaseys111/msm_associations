class Actor < ApplicationRecord
  has_many :characters, :class_name => "Character", :foreign_key => "actor_id"

  validates :name, :presence => true, :uniqueness => { scope: :dob }
end
