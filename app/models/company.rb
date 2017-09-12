class Company < ApplicationRecord
  is_impressionable
  belongs_to :user

  validates_uniqueness_of :user_id

end
