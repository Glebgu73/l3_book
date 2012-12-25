class Book < ActiveRecord::Base
  attr_accessible :author, :description, :number_of_pages, :production_year, :publishing_house, :title, :state
	
	validates :author,  :presence => true
  	validates :description,   :presence => true
  	validates :number_of_pages,   :presence => true
	validates :production_year,   :presence => true
	validates :publishing_house,   :presence => true
	validates :title,   :presence => true
	validates :number_of_pages, :numericality => { :only_integer => true }
	validates :production_year, :numericality => { :only_integer => true }
	state_machine :state, :initial => :not_downloaded do
    event :download do
      transition :not_downloaded  => :downloaded     
    end

    event :del do
      transition :downloaded  => :not_downloaded 
    end
  end
end
