require 'csv'


class PagesController < ApplicationController
  
  def home

    the_oscar_award_csv_text = File.read(Rails.root.join('lib', 'seeds', 'the_oscar_award.csv'))
    @the_oscar_award_csv = CSV.parse(the_oscar_award_csv_text, :headers => true, :encoding => 'ISO-8859-1')
    
  end
  
end