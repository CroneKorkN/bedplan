json.extract! employee, :id, :name, :score, :score_date, :created_at, :updated_at
json.url employee_url(employee, format: :json)