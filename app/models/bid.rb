class Bid < ApplicationRecord
  belongs_to :user
  belongs_to :job


  def user_avatar
    self.user.contractor.avatar(:medium)
  end

  def user_avatar_small
    self.user.contractor.avatar(:thumb)
  end

  def user_url
    self.user.contractor.id
  end

end
