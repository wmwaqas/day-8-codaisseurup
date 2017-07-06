class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories
  has_many :photos
  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }

  #validate :ends_at_after_starts_at?

#maybe I should make it a class method e.g. self.ends_at_after_starts_at
#def ends_at_after_starts_at?
  #if ends_at < starts_at
    #errors.add :ends_at, "must be after starts_at"
  #end
#end
def bargain?
    price < 30
  end
end
