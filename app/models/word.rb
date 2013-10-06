class Word
  include Mongoid::Document
  include Mongoid::Timestamps

  field :idol_id, type: Integer
  field :text, type: String
  field :voice, type: String
  field :tags, type: Array
end
