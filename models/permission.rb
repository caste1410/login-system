require 'sequel' 
	 
class Permission < Sequel::Model
    set_primary_key :id  
    many_to_one :user 
end
