class SerializableMovie < JSONAPI::Serializable::Resource
  type 'movies'
  attribute :title
  attribute :plot
  attribute :created_at
end
