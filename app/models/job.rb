class Job < ApplicationRecord
  is_impressionable 
  has_many :bids
  belongs_to :user

  before_create :localizer


  def localizer
    self.location = "#{self.address},#{self.city},#{self.postcode}"
  end
    

  def number_of_bids
    self.bids.size
  end

  def timer
    Time.now
  end

  def impression_count
    impressions.size
  end

  def summary

    nb_words_max = 230

    if description.length > nb_words_max
      description.truncate(nb_words_max, :separator => ' ') + " ..."
    else
     self.description
    end

  end

end
