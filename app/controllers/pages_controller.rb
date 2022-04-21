require 'csv'


class PagesController < ApplicationController

  def home
    
    # academy-defined categories
    @academy_defined_categories = ["BEST PICTURE", "ACTOR", "ACTRESS", "SUPPORTING ACTOR", "SUPPORTING ACTRESS", "DIRECTING", "ORIGINAL SCREENPLAY", "ADAPTED SCREENPLAY", "CINEMATOGRAPHY", "PRODUCTION DESIGN", "EDITING", "ORIGINAL SCORE", "ORIGINAL SONG", "COSTUME DESIGN", "MAKEUP AND HAIRSTYLING", "SOUND MIXING", "SOUND EDITING", "VISUAL EFFECTS", "FOREIGN-LANGUAGE FILM", "ANIMATED FEATURE FILM", "ANIMATED SHORT", "LIVE-ACTION SHORT", "DOCUMENTARY FEATURE", "DOCUMENTARY SHORT"]
    
    # parse csv file into array (using a 'cleaner' version, which tries to map most historical categories to the 24 official ones above.)
    the_oscar_award_csv_text = File.read(Rails.root.join('lib', 'seeds', 'the_oscar_award_cleaner.csv'))
    @the_oscar_award_csv = CSV.parse(the_oscar_award_csv_text, :headers => true, :encoding => 'ISO-8859-1')
    
    # create unique category list
    @category_list = []
    @the_oscar_award_csv.each do |row|
      @category_list |= [row['category']]
    end
    
    # what are the categories not in the academy's current list?
    @deprecated_categories = []
    @category_list.each do |category|
      if !@academy_defined_categories.include? category
        @deprecated_categories |= [category]
      end
    end
    
  end

end