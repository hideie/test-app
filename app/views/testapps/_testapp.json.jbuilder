json.extract! testapp, :id, :name, :gender, :birthday, :created_at, :updated_at
json.url testapp_url(testapp, format: :json)