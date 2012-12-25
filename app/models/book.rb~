class Book < ActiveRecord::Base
  attr_accessible :author, :description, :number_of_pages, :production_year, :publishing_house, :title, :state
	
	state_machine :state, :initial => :not_downloaded do
    event :download do
      transition :not_downloaded  => :downloaded     
    end

    event :del do
      transition :downloaded  => :not_downloaded 
    end
  end
end
