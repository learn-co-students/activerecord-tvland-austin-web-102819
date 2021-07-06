class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + ' ' + self.last_name
  end

  def list_roles
    arr = []
    self.characters.each{|character|
    arr << (character.name + ' - ' + character.show.name)}
    arr
  end

end