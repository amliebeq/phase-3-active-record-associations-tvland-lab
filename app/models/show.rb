class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network
    
    def #network
        self.network
    end

    def actors_list
        self.actors.map { |item| "#{item.first_name} #{item.last_name}"}
    end
end