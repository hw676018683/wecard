class SharedPerson < ActiveRecord::Base
	belongs_to :person

	validates :person_id,presence: true
	validates :shared_id, presence: true
	
end
