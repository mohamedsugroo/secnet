json.extract! contractor, :id, :preferred_hourly_rate, :user_id, :avatar, :avatar_medium, :avatar_thumb , :full_name, :first_name, :last_name, :gender, :dob, :firstline_address, :postcode, :city, :county, :country, :mobile, :utr, :contracts_id, :right_to_work_uk, :bio, :created_at, :updated_at
json.url contractor_url(contractor)

json.workhistories contractor.workhistories do |con|
  json.company_name   con.company_name
  json.your_role    con.your_role
  json.start_date   con.start_date
  json.end_date   con.end_date
  json.note   con.note

end

# json.url contractor_url(contractor, format: :json)
