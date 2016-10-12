class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, :class_name => "User"
  has_many :person_interests, :as => :person
  has_many :interests, :through => :person_interests
end
