class Job < ApplicationRecord
  is_impressionable
  has_many :bids
  belongs_to :user

  def number_of_bids
    self.bids.size
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
