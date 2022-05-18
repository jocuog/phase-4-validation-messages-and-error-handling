class Movie < ApplicationRecord

    CATEGORIES = ['Comedy', 'Drama', 'Animation', 'Mystery', 'Fantasy', 'Horror', 'Action', 'Documentary', 'Science Fiction']

    validates :title, presence: true
    validates :year, numericality: {
        greater_than_or_equal_to: 1888,
        less_than_or_equal_to: Date.today.year
    }
    validates :poster_url, presence: true
    validates :category, inclusion: {
        in: CATEGORIES,
        message: "must be on of: #{CATEGORIES.join(',')}"
    }


end
