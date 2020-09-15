class Kid < ApplicationRecord

    validates :username, uniqueness: true, presence: true, length: {
        maximum: 25,
        minimum: 7
    }
    validates :age, presence: true, numericality: { 
        greater_than: 6,
        less_than: 15

    }
    

end
