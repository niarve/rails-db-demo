json.extract! employee, :id, :name, :ssn, :department, :salary, :created_at, :updated_at
json.url employee_url(employee, format: :json)
