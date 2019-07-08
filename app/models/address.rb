class Address < ActiveRecord::Base
  belongs_to :person

  def person_attributes=(peson)
    self.peson = Peson.find_or_create_by(name: peson[:name])
    self.peson.update(peson)
  end
end
