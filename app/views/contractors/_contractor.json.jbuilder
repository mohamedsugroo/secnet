json.extract! contractor, :id, :preferred_hourly_rate, :user_id, :avatar, :avatar_medium, :avatar_thumb , :full_name, :first_name, :last_name, :gender, :dob, :firstline_address, :postcode, :city, :county, :country, :mobile, :utr, :contracts_id, :right_to_work_uk, :bio, :created_at, :updated_at
json.url contractor_url(contractor)
# json.url contractor_url(contractor, format: :json)
