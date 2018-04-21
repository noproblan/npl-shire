json.extract! ticket_option, :id, :name, :price, :ticket_id, :created_at, :updated_at
json.url ticket_option_url(ticket_option, format: :json)
