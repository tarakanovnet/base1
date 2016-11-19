json.extract! room, :id, :pos_x, :pos_y, :tags, :information, :created_at, :updated_at
json.url room_url(room, format: :json)