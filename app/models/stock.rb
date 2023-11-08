class Stock < ApplicationRecord
    validates :ticker, presence: true
    validates :ticker, format: {without: /\s/}
end
