json.extract! job, :id, :number_of_bids, :title, :summary, :description, :start_date, :end_date, :hourly_rate, :number_of_hourse, :fixed_price, :negotiable_price, :created_at, :updated_at
json.bid_size job.bids.size
json.url job_url(job)
# json.url job_url(job, format: :json)

if @job.present?

  json.impression do
    json.count @job.impression_count
  end

else

end



json.bids job.bids do |bid|
  json.user_avatar_small bid.user_avatar_small
  json.user_avatar bid.user_avatar
  json.hourly_rate bid.hourly_rate
  json.total_rate bid.total_rate
  json.note bid.note
end
