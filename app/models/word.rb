class Word
  include Mongoid::Document
  include Mongoid::Timestamps

  field :idol_id, type: Integer
  field :text, type: String
  field :tags, type: String
end
