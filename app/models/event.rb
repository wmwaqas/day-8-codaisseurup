class Event < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :themes
  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 500 }
  validates :starts_at, presence: true
  validates :ends_at, presence: true
  #validate :ends_at_after_starts_at?

#def ends_at_after_starts_at?
  #if ends_at < starts_at
    #errors.add :ends_at, "must be after starts_at"
  #end
#end
end
