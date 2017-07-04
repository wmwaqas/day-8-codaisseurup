class Profile < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :bio, presence: true
# a method to create full name of the user from frist and last name
  def full_name
    "#{first_name} #{last_name}"
    #OR
    #first_name + "" + last_name (two ways of writing the same method)
  end
end
