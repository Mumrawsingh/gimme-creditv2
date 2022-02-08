class CreditScore < ApplicationRecord

    belongs_to :user

    # validates :score, numericality: { only_integer: true }

end
