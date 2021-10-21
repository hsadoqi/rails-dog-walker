class Owner < ApplicationRecord

    def self.capitalize_names 
        all.map {|owner| owner.upcase}
    end 
end
