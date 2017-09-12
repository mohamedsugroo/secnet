class Workhistory < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :contractor,  optional: true
end
