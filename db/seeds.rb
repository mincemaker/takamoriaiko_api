# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

data1 = YAML.load_file('db/idols.yml')
data2 = YAML.load_file('db/words.yml')

Idol.delete_all
data1.each.with_index do |value, index|
  idol = Idol.new(value[1])
  data2.each do |word_data|
    if word_data[1]['idol_id'] == index + 1
      idol.words << Word.new(word_data[1])
    end
  end
  idol.save
end
