# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

# user our csv files to seed the models
#  year_film, year_ceremony, ceremony, category, name, film, winner
the_oscar_award_csv_text = File.read(Rails.root.join('lib', 'seeds', 'the_oscar_award_cleaner.csv'))
the_oscar_award_csv = CSV.parse(the_oscar_award_csv_text, :headers => true, :encoding => 'ISO-8859-1')



# create categories
academy_defined_category_names = ['BEST PICTURE', 'ACTOR', 'ACTRESS', 'SUPPORTING ACTOR', 'SUPPORTING ACTRESS', 'DIRECTING', 'ORIGINAL SCREENPLAY', 'ADAPTED SCREENPLAY', 'CINEMATOGRAPHY', 'PRODUCTION DESIGN', 'EDITING', 'ORIGINAL SCORE', 'ORIGINAL SONG', 'COSTUME DESIGN', 'MAKEUP AND HAIRSTYLING', 'SOUND MIXING', 'SOUND EDITING', 'VISUAL EFFECTS', 'FOREIGN-LANGUAGE FILM', 'ANIMATED FEATURE FILM', 'ANIMATED SHORT', 'LIVE-ACTION SHORT', 'DOCUMENTARY FEATURE', 'DOCUMENTARY SHORT']

academy_defined_category_names.each do |category_name|
  Category.create(name: category_name)
end


# create ceremonies
ceremony_list = {}
the_oscar_award_csv.each do |row|
  ceremony_list[row['ceremony']] = row['year_ceremony']
end

ceremony_list.each do |key, value|
  Ceremony.create(ceremony: key, year: value)
end



