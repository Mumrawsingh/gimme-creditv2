class User < ApplicationRecord
    has_many :prompts

    has_secure_password

    validates :username, presence: true, uniqueness: true

    # validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true, uniqueness: true

end
