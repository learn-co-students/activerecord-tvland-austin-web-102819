class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    # binding.pry
    arr = []
    arr.push(Actor.all.find_by(id: self.characters.all[0].actor_id).full_name)
  end
end