class Idol
  include Mongoid::Document
  include Mongoid::Timestamps
  embeds_many :words

  field :name, type: String
  field :age, type: Integer
  field :height, type: Integer
  field :weight, type: Integer
  field :bust, type: Integer
  field :waist, type: Integer
  field :hip, type: Integer
  field :birthday, type: String
  field :zodiac, type: String
  field :blood_type, type: String
  field :hand, type: String
  field :hometown, type: String
  field :hobby, type: String
  field :skill_name, type: String
  field :rarity, type: String
  field :level_max, type: Integer
  field :love_max, type: Integer
  field :cost, type: Integer
  field :transfer_money, type: Integer
  field :min_atk, type: Integer
  field :min_def, type: Integer
  field :max_atk, type: Integer
  field :max_def, type: Integer
end
