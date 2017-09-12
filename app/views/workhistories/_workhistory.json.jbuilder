json.extract! workhistory, :id, :company_name, :note, :start_date, :end_date, :user_id, :contractor_id, :created_at, :updated_at
json.url workhistory_url(workhistory, format: :json)
