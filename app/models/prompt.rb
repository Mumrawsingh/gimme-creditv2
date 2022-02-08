class Prompt < ApplicationRecord

    belongs_to :user

    validates :title, presence: true
    validates :description, length: { minimum: 150 }

end
